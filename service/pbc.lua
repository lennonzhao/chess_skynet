local service = require "service"
local skynet = require "skynet"
require "skynet.manager"
local pb = require "protobuf"
local protoPrase = require "protoParse"

local pb_files = {
	"proto/common.pb",
	"proto/hall/hall.pb",
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
	-- dump(commandMap)
	for key, cmd in pairs(commandMap) do
		local reqName = config.package .. key .. "Req"
		recvCodeToName[cmd] = reqName
		recvNameToCode[reqName] = cmd

		local rspName = config.package .. key .. "Rsp"
		sendCodeToName[cmd] = rspName
		sendNameToCode[rspName] = cmd

		Command[key] = cmd
	end

	-- dump(Command)
end

function cmd.encode(pbName, msg)
	-- skynet.error("encode："..pbName)
	return pb.encode(pbName, msg)
end

function cmd.decode(pbName, data)
	-- skynet.error("decode：".. pbName.. " " .. type(data) .." " .. #data)
	return pb.decode(pbName, data)
end

function cmd.findReqName(code)
	-- skynet.error("findReqName：".. string.format("0x%04x", code))
	return recvCodeToName[code]
end

function cmd.findRspName(code)
	-- skynet.error("findRspName：".. string.format("0x%04x", code))
	return sendCodeToName[code]
end

function cmd.dump(pbName, msg, tag)
	xpcall(
        function()
			protoPrase.dumpMessage(pbName, msg, tag)
        end,
        function()
            printWarn(debug.traceback())
        end
    )
end

function cmd.getCommand()
	return Command
end

service.init {
	command = cmd,
	init = function()
		cmd.init()
	end
}