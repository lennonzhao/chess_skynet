local skynet = require "skynet"
local netpack = require "skynet.netpack"
local socket = require "skynet.socket"
local pb = require "protobuf"
local protopack = require "protopack"
local WATCHDOG
local client_fd
local CMD = {}
local Command = {}

--[[发送包给玩家]]
local function send_request(cmd, msg)
	local package = protopack.pack(cmd, msg)
	socket.write(client_fd, package)
end

--[[处理玩家发过来的包]]
local function recv_request(session, source, cmd, msg, pbName, check)
	INFO("client_dispatch", session, source, cmd, msg, pbName, check)
	protopack.dump(pbName, msg, string.format("0x%04x", cmd))
	dump(Command, "Command")
	if cmd == Command.BuildConfigs then
    	-- dump(msg.gameTypes, "BuildConfigs")
    	send_request(Command.BuildConfigs, {
			buildInfos = {  
				{
			        buildJson = "",
			        createInfo = {},
			        gameType = 153,
			        round = 4,
			        supportInfos = { {
			                diamond = 10,
			                mask = 3,
			                payType = 1
			            }, {
			                diamond = 10,
			                mask = 2,
			                payType = 4
			            }, {
			                diamond = 5,
			                mask = 3,
			                payType = 2
			            }, {
			                diamond = 10,
			                mask = 3,
			                payType = 3
			            } }
			    }, {
			        buildJson = "",
			        createInfo = {},
			        gameType = 153,
			        round = 8,
			        supportInfos = { {
			                diamond = 15,
			                mask = 3,
			                payType = 1
			            }, {
			                diamond = 15,
			                mask = 2,
			                payType = 4
			            }, {
			                diamond = 7,
			                mask = 3,
			                payType = 2
			            }, {
			                diamond = 15,
			                mask = 3,
			                payType = 3
			            } }
			    }, {
			        buildJson = "",
			        createInfo = {},
			        gameType = 153,
			        round = 16,
			        supportInfos = { {
			                diamond = 25,
			                mask = 3,
			                payType = 1
			            }, {
			                diamond = 25,
			                mask = 2,
			                payType = 4
			            }, {
			                diamond = 12,
			                mask = 3,
			                payType = 2
			            }, {
			                diamond = 25,
			                mask = 3,
			                payType = 3
			            } }
			    }, {
			        buildJson = "",
			        createInfo = {},
			        gameType = 154,
			        round = 4,
			        supportInfos = { {
			                diamond = 15,
			                mask = 3,
			                payType = 1
			            }, {
			                diamond = 15,
			                mask = 2,
			                payType = 4
			            }, {
			                diamond = 5,
			                mask = 3,
			                payType = 2
			            }, {
			                diamond = 15,
			                mask = 3,
			                payType = 3
			            } }
			    }, {
			        buildJson = "",
			        createInfo = {},
			        gameType = 154,
			        round = 8,
			        supportInfos = { {
			                diamond = 22,
			                mask = 3,
			                payType = 1
			            }, {
			                diamond = 22,
			                mask = 2,
			                payType = 4
			            }, {
			                diamond = 7,
			                mask = 3,
			                payType = 2
			            }, {
			                diamond = 22,
			                mask = 3,
			                payType = 3
			            } }
			    }, {
			        buildJson = "",
			        createInfo = {},
			        gameType = 154,
			        round = 16,
			        supportInfos = { {
			                diamond = 37,
			                mask = 3,
			                payType = 1
			            }, {
			                diamond = 37,
			                mask = 2,
			                payType = 4
			            }, {
			                diamond = 12,
			                mask = 3,
			                payType = 2
			            }, {
			                diamond = 37,
			                mask = 3,
			                payType = 3
			            } }
			    }, {
			        buildJson = "",
			        createInfo = {},
			        gameType = 155,
			        round = 4,
			        supportInfos = { {
			                diamond = 20,
			                mask = 3,
			                payType = 1
			            }, {
			                diamond = 20,
			                mask = 2,
			                payType = 4
			            }, {
			                diamond = 5,
			                mask = 3,
			                payType = 2
			            }, {
			                diamond = 20,
			                mask = 3,
			                payType = 3
			            } }
			    }, {
			        buildJson = "",
			        createInfo = {},
			        gameType = 155,
			        round = 8,
			        supportInfos = { {
			                diamond = 30,
			                mask = 3,
			                payType = 1
			            }, {
			                diamond = 30,
			                mask = 2,
			                payType = 4
			            }, {
			                diamond = 7,
			                mask = 3,
			                payType = 2
			            }, {
			                diamond = 30,
			                mask = 3,
			                payType = 3
			            } }
			    }, {
			        buildJson = "",
			        createInfo = {},
			        gameType = 155,
			        round = 16,
			        supportInfos = { {
			                diamond = 50,
			                mask = 3,
			                payType = 1
			            }, {
			                diamond = 50,
			                mask = 2,
			                payType = 4
			            }, {
			                diamond = 12,
			                mask = 3,
			                payType = 2
			            }, {
			                diamond = 50,
			                mask = 3,
			                payType = 3
			            } }
			    }
			},
			result = {
			    gameId = 40000,
			    message = "",
			    request = {
			        api = 0,
			        code = 49
			    },
			    status = 0
			}
		})
	end
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
	-- skynet.fork(function()
	-- 	while true do
	-- 		send_request(Command.HeartBeat, {})
	-- 		skynet.sleep(5000)
	-- 	end
	-- end)

	client_fd = fd
	skynet.call(gate, "lua", "forward", fd)
end

function CMD.disconnect()
	-- todo: do something before exit
	-- 玩家离开
	skynet.exit()
end

function CMD.loginSuc(data)
	-- 到验证服务器 拿到用户数据
	send_request(Command.Login, {
        activityUrl = "http://proxy.zg915.com/public/activity_103",
        broadcast = "",
        builtCode = 0,
        builtCodes = {},
        config = {
            bindProxyAward = 5,
            worldchatCost = 0
        },
        downloadUrl = "",
        gameInfos = { {
                flag = 0,
                id = 12000,
                name = "四人安庆麻将",
                online = "",
                type = 155
            },  {
                flag = 0,
                id = 12000,
                name = "三人安庆麻将",
                online = "",
                type = 154
            },  {
                flag = 0,
                id = 12000,
                name = "二人安庆麻将",
                online = "",
                type = 153
            }, },
        inviteUrl = "",
        ip = 1378703217,
        isAgent = false,
        isBinded = 0,
        noticeUrl = "",
        playCode = 0,
        proxyUrl = "",
        result = {
            gameId = 40000,
            message = "",
            request = {
                api = 0,
                code = 1
            },
            status = 0
        },
        shareUrl = "http://proxy.zg915.com/public/authorize",
        thirdInfo = "",
        updateUrl = "",
        userInfo = {
            firstPayStatus = 0,
            id = 202779,
            isRegister = 0,
            lastLoginTime = "",
            playerInfo = {
                diamond = 72,
                drawTimes = 0,
                headUrl = "",
                headUrlSmall = "",
                id = 202779,
                jsonStr = "",
                loseTimes = 0,
                money = 2000,
                nick = "mx4",
                sex = 0,
                vipLevel = 0,
                winTimes = 0
            },
            session = ""
        },
        userType = 0,
        voiceUrl = "http://voice.bcewo.cn:7000",
        wechatPay = true
    })
end

skynet.start(function()
	Command = protopack.getCommand()

	skynet.dispatch("lua", function(_,_, command, ...)
		local f = CMD[command]
		skynet.ret(skynet.pack(f(...)))
	end)
end)
