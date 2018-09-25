local skynet = require "skynet"
local netpack = require "skynet.netpack"
local socket = require "skynet.socket"
local sproto = require "sproto"
local sprotoloader = require "sprotoloader"
local pb = require "protobuf"
local core = require "sproto.core"

local protopack = require ("protopack_pbc")

local WATCHDOG
local host
local send_request

local CMD = {}
local REQUEST = {}
local client_fd

function REQUEST:get()
	print("get", self.what)
	local r = skynet.call("SIMPLEDB", "lua", "get", self.what)
	return { result = r }
end

function REQUEST:set()
	print("set", self.what, self.value)
	local r = skynet.call("SIMPLEDB", "lua", "set", self.what, self.value)
end

function REQUEST:handshake()
	return { msg = "Welcome to skynet, I will send heartbeat every 5 sec." }
end

function REQUEST:quit()
	skynet.call(WATCHDOG, "lua", "close", client_fd)
end

local function request(name, args, response)
	-- local f = assert(REQUEST[name])
	-- local r = f(args)
	-- if response then
	-- 	return response(r)
	-- end
	if name == "hall.LoginReq" then
		printInfo("hall.LoginReq", args.request.code)
	end
end

local function send_package(pack)
	local package = string.pack(">s2", pack)
	socket.write(client_fd, package)
end

local function decode_msg(msg)
	return "REQUEST", "hall.LoginReq", pb.decode("hall.LoginReq", msg)
end

--打印二进制string，用于调试
local function bin2hex(s)
    s=string.gsub(s, "(.)", function (x) return string.format("%02X ", string.byte(x)) end)
    return s
end

local function client_dispatch(...)
	INFO("client_dispatch", ...)

    -- local queue_id = get_queue_id(cmd)
    -- if not queue_id then
    --     client_dispatch_help(cmd, check, msg, fd, source)
    --     return
    -- end
    -- if not env.waiting_queue[fd] then
    --     env.waiting_queue[fd] = {}
    -- end
    -- if not env.waiting_queue[fd][queue_id] then
    --     env.waiting_queue[fd][queue_id] = {}
    -- end
    -- local queues = env.waiting_queue[fd][queue_id]
    -- if #queues  > 0 then
    --     table.insert(queues, {cmd, check, msg, fd, source})
    --     return
    -- end

    -- table.insert(queues, {cmd, check, msg, fd, source})
    -- for i = 1, 100 do
    --     local queue = table.remove(queues) 
    --     if not queue then
    --         return
    --     end
    --     client_dispatch_help(table.unpack(queue))
    -- end
    -- if #queues > 0 then
    --     log.error("%s queue is full, queue_id: %d", fd, queue_id)
    -- end
    -- env.waiting_queue[fd][queue_id] = nil
end

-- skynet.register_protocol {
-- 	name = "client",
-- 	id = skynet.PTYPE_CLIENT,
-- 	unpack = function (msg, sz)
--     	local str = skynet.tostring(msg, sz)
-- 		INFO("recv:" ..  bin2hex(str))
-- 		local cmd, pbName, msg, check = protopack.unpack(str)
-- 		return decode_msg(msg)
-- 	end,
-- 	dispatch = function (_, _, type, ...)
-- 		printInfo("com a new message", type, ...)
-- 		if type == "REQUEST" then
-- 			local ok, result  = pcall(request, ...)
-- 			-- if ok then
-- 			-- 	if result then
-- 			-- 		send_package(result)
-- 			-- 	end
-- 			-- else
-- 			-- 	skynet.error(result)
-- 			-- end
-- 		else
-- 			assert(type == "RESPONSE")
-- 			error "This example doesn't support request client"
-- 		end
-- 	end
-- }

skynet.register_protocol {
	name = "client",
	id = skynet.PTYPE_CLIENT,
	unpack = skynet.unpack,
	dispatch = client_dispatch,
}

function CMD.start(conf)
	local fd = conf.client
	local gate = conf.gate
	WATCHDOG = conf.watchdog
	-- slot 1,2 set at main.lua
	-- host = sprotoloader.load(1):host "package"
	-- send_request = host:attach(sprotoloader.load(2))
	-- skynet.fork(function()
	-- 	while true do
	-- 		send_package(send_request "heartbeat")
	-- 		skynet.sleep(500)
	-- 	end
	-- end)

	client_fd = fd
	skynet.call(gate, "lua", "forward", fd)
end

function CMD.disconnect()
	-- todo: do something before exit
	skynet.exit()
end

skynet.start(function()
	skynet.dispatch("lua", function(_,_, command, ...)
		local f = CMD[command]
		skynet.ret(skynet.pack(f(...)))
	end)
end)
