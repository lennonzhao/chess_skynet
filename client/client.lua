package.cpath = "luaclib/?.so;skynet/luaclib/?.so"
package.path = "client/?.lua;lualib/?.lua;skynet/lualib/?.lua;cfg/?.lua;"

if _VERSION ~= "Lua 5.3" then
	error "Use lua 5.3"
end

local socket = require "client.socket"
local protopack = require ("protopack_pbc")

local pb = require "protobuf"

local pb_files = {
	"proto/common.pb",
	"proto/hall/hall.pb",
}
for _,v in ipairs(pb_files) do
	pb.register_file(v)
end

local fd = assert(socket.connect("127.0.0.1", 7002))

local function send_package(fd, msg)
	local cmd = msg.request.code
	local cmdName = "hall.LoginReq" 
	local check = msg._check or 0
	msg._check = nil
	local data = protopack.pack(cmdName, msg, check)
	libsocket.send(fd, data)
end

local function unpack_package(text)
	local size = #text
	if size < 2 then
		return nil, text
	end
	local s = text:byte(1) * 256 + text:byte(2)
	if size < s+2 then
		return nil, text
	end

	return text:sub(3,2+s), text:sub(3+s)
end

local function recv_package(last)
	local result
	result, last = unpack_package(last)
	if result then
		return result, last
	end
	local r = socket.recv(fd)
	if not r then
		return nil, last
	end
	if r == "" then
		error "Server closed"
	end
	return unpack_package(last .. r)
end

local session = 0

local function send_request(name, msg)
	-- session = session + 1
	-- local str = request(name, msg, session)
	-- send_package(fd, str)
	-- print("Request:", session)
	local package = protopack.pack(10000, name, msg, 0)
	socket.send(fd, package)
	-- local str = pb.encode(name, msg)
	-- local package = string.pack(">s2", str)
	-- socket.send(fd, package)
end

local last = ""

local function print_request(name, args)
	print("REQUEST", name)
	if args then
		for k,v in pairs(args) do
			print(k,v)
		end
	end
end

local function print_response(session, args)
	print("RESPONSE", session)
	if args then
		for k,v in pairs(args) do
			print(k,v)
		end
	end
end

local function print_package(t, ...)
	if t == "REQUEST" then
		print_request(...)
	else
		assert(t == "RESPONSE")
		print_response(...)
	end
end

local function dispatch_package()
	while true do
		local v
		v, last = recv_package(last)
		if not v then
			break
		end

		print_package(host:dispatch(v))
	end
end

send_request("hall.LoginReq", {
	request = {
		code = 0x0001,
		api = 122,
	},
    basic = {
        api = 122,
        hotCode = 999,
        userType = 0,
        verName = "1.0.4"
    },
    imei = "00b204e9800998ecf8427e6878553627",
    modelName = "Coolpad 5219",
    os = "windows",
    simType = 0,
    tel = "",
    thirdInfo = ""
})
-- send_request("set", { what = "hello", value = "world" })
while true do
	dispatch_package()
	local cmd = socket.readstdin()
	if cmd then
		if cmd == "quit" then
			send_request("quit")
		else
			send_request("get", { what = cmd })
		end
	else
		socket.usleep(100)
	end
end
