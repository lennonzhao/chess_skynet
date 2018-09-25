local skynet = require "skynet"
require "skynet.manager"
local pb = require "protobuf"

local pb_files = {
	"proto/common.pb",
	"proto/hall/hall_hz.pb",
}

local cmd = {}
local proto = {}

function cmd.init()
	for _,v in ipairs(pb_files) do
		cmd.register(v)
	end
end

function cmd.register(file)
	pb.register_file(file)
	proto[file] = true
end

function cmd.encode(msg_name, msg)
	skynet.error("encode"..msg_name)
	return pb.encode(msg_name, msg)
end

function cmd.decode(msg_name, data)
	skynet.error("decode ".. msg_name.. " " .. type(data) .." " .. #data)
	return pb.decode(msg_name, data)
end

function cmd.findPbName(code)
	return "hall.LoginReq"
end

function cmd.test()
	skynet.error("pbc test...")

	local data = pb.encode("hall.LoginReq", {
		request = {
			code = 0x1001,
			api = 101,
		},
		basic = {

		}
	})
	skynet.error("pb encode: " .. type(data))

	local __basepb = pb.decode("hall.LoginReq", data)
	if __basepb then
		skynet.error(__basepb.request.code)
		skynet.error(__basepb.request.api)
	else
		skynet.error("error")
	end
end

skynet.start(function ()
	skynet.error("init pbc...")
	cmd.init()
	-- cmd.test()
	skynet.dispatch("lua", function (session, address, command, ...)
		local f = cmd[command]
		if not f then
			skynet.ret(skynet.pack(nil, "Invalid command" .. command))
		end
		print('pbc', address, command, ...)
		local ret = f(...)
		skynet.ret(skynet.pack(ret))
	end)

	skynet.register("pbc")
end)
