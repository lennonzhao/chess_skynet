local skynet = require "skynet"
require "skynet.manager"
local pb = require "protobuf"
local protoPrase = require "protoParse"

local pb_files = {
	"proto/common.pb",
	"proto/hall/hall_hz.pb",
}

local command_files = {
	{
		file = "command_hall", 
		package = "hall."
	},
	{
		file = "command_room", 
		package = "room."
	}
}

local cmd = {}
local Command = {}
local proto = {}

local recvCodeToName = {}
local recvNameToCode = {}
local sendCodeToName = {}
local sendNameToCode = {}

function cmd.init()
	for _,v in ipairs(pb_files) do
		cmd.register(v)
	end
	for i,v in ipairs(command_files) do
		cmd.mergeCommand(v)
	end
end

function cmd.register(file)
	if proto[file] then return end
	pb.register_file(file)
	protoPrase.parseFiles({file})
	proto[file] = true
end

function cmd.mergeCommand(config)
	local commandMap = require("network." .. config.file)
	for key, cmd in pairs(commandMap) do
		local reqName = config.package .. key .. "Req"
		recvCodeToName[cmd] = reqName
		recvNameToCode[reqName] = cmd
		local rspName = config.package .. key .. "Rsp"
		sendCodeToName[cmd] = rspName
		sendNameToCode[rspName] = cmd

		Command[key] = cmd
	end
end

function cmd.encode(pbName, msg)
	skynet.error("encode"..pbName)
	return pb.encode(pbName, msg)
end

function cmd.decode(pbName, data)
	skynet.error("decode ".. pbName.. " " .. type(data) .." " .. #data)
	return pb.decode(pbName, data)
end

function cmd.findReqName(code)
	skynet.error("findReqName ".. string.format("0x%04x", code))
	return recvCodeToName[code]
end

function cmd.findRspName(code)
	skynet.error("findRspName ".. string.format("0x%04x", code))
	return sendCodeToName[code]
end

function cmd.dump(pbName, msg, tag)
	protoPrase.dumpMessage(pbName, msg, tag)
end

function cmd.getCommand()
	return Command
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
	skynet.dispatch("lua", function (session, address, command, ...)
		print('[pbc]', address, command, ...)
		local f = cmd[command]
		if not f then
			skynet.ret(skynet.pack(nil, "Invalid command" .. command))
		end
		local ret = f(...)
		skynet.ret(skynet.pack(ret))
	end)

	skynet.register("pbc")
end)
