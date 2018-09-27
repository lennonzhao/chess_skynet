local skynet = require "skynet"
local netpack = require "skynet.netpack"
local socket = require "skynet.socket"
local pb = require "protobuf"
local protopack = require ("protopack_pbc")

local WATCHDOG
local client_fd
local CMD = {}
local command = {}

local REQUEST = {
}

function REQUEST:hall.LoginReq()
	skynet.call(WATCHDOG, "lua", "close", client_fd)
end

--[[处理玩家发过来的包]]
local function recv_request(session, source, cmd, msg, pbName, check)
	INFO("client_dispatch", session, source, cmd, msg, pbName, check)
	protopack.dump(pbName, msg, string.format("0x%04x", cmd))
	if cmd == Command.Login then
		printInfo("玩家请求登录游戏，返回登录成功的包")
	end
end

--[[发送包给玩家]]
local function send_package(package)
	socket.write(client_fd, package)
end

skynet.register_protocol {
	name = "client",
	id = skynet.PTYPE_CLIENT,
	unpack = skynet.unpack,
	dispatch = recv_request,
}

function CMD.start(conf)
	local fd = conf.client
	local gate = conf.gate
	WATCHDOG = conf.watchdog

	-- 发送心跳包
	skynet.fork(function()
		while true do
			protopack:pack(0, "hall.HeartBeatReq", {

			})
			-- send_package()
			skynet.sleep(5000)
		end
	end)

	client_fd = fd
	skynet.call(gate, "lua", "forward", fd)
end

function CMD.disconnect()
	-- todo: do something before exit
	-- 玩家离开
	skynet.exit()
end

skynet.start(function()
	skynet.dispatch("lua", function(_,_, command, ...)
		local f = CMD[command]
		skynet.ret(skynet.pack(f(...)))
	end)
end)
