local skynet = require "skynet"
local runconf = require(skynet.getenv("runconfig"))
local protopack = require("protopack_" .. runconf.protopack)
local mysqldb

local CMD = {}

-- return flag loginRsp
-- in in_session bigint(32), in in_imei varchar(128), in in_api int(11), in in_ver varchar(16), in in_model varchar(32), in in_tel varchar(32), in in_sim int(11), in in_gender int(11), in in_nick varchar(64), in in_head_url varchar(1024), in in_ip int unsigned, in in_uuid varchar(128), in in_hot_code int,in in_os varchar(16)
local visitorLogin = function(data, session)
	local status = AUTH_ERROR.login_success
	local loginRsp = nil
	repeat
		local imei = data.imei
		if not imei or string.len(imei) == 0 then
			status = AUTH_ERROR.param_error
			break
		end
		local api = data.basic.api
		local hotCode = data.basic.hotCode
		local userType = data.basic.userType

		local tel = data.tel
		local sql = string.format("call sx_game.sp_login(%d,'%s',%s,'%s','%s','%s',%s,%s,'%s','%s',%d,'%s',%d,'%s')", 
			os.time(),
			data.imei,
			data.basic.api,
			data.basic.verName,
			string.escape(data.modelName),
			data.tel,
			0,
			data.gender or 0,
			string.escape(data.modelName),
			data.headUrl or '',
			0,
			'',
			data.basic.hotCode or 0,
			data.os)
		local ret, res = skynet.call(mysqldb, "lua", "execute", sql)
		if not ret then
			status = AUTH_ERROR.db_error
			printError("sp_login error", res)
			break
		end
		local sql = string.format('select @RET, @UID, @GENDER, @NICK, @DIAMOND, @MONEY, @RMB, @WIN, @LOSE, @DRAW, @HEAD_URL, @BUILT_ROOMS, @CUR_ROOM_ID, @AGENT, @VOICE_URL, @SHARE_URL, @DOWNLOAD_URL, @ACTIVITY_URL, @UPDATE_URL, @BIND_AWARD, @NOTICE_URL, @WECHAT_PAY, @BROADCAST, @RED_PACKET, @INVITE_URL, @REGISTER')
		local ret, res = skynet.call(mysqldb, "lua", "execute", sql)
		if not ret then
			status = AUTH_ERROR.db_error
			printError("select sp_login error", res)
			break
		end
		if #res == 0 then
			status = AUTH_ERROR.db_error
			printError("select sp_login empty")
			break
		end
		local result = res[1]
		dump(result, '登陆结果')
		local RET = tonumber(result['@RET'])
		if RET ~= 0 then
			status = AUTH_ERROR.db_error
			break
		end
		loginRsp = {
			result = {
				status = AUTH_ERROR.login_success,
			},
			userInfo = {
				id = tonumber(result['@UID']),
				sex = tonumber(result['@GENDER']),
				nick = result['@NICK'],
				diamond = tonumber(result['@DIAMOND']),
				money = tonumber(result['@MONEY']),
			},
			userType  = data.basic.userType,
			isBinded = false,
		}
		dump(loginRsp, "登陆成功")
	until true
	return status, loginRsp
end

local wechatLogin = function(data)
	
end

function CMD.login(fd, data, session)
	local status = AUTH_ERROR.login_success
	local userType = data.basic.userType or 0
	print('登录类型', userType, session)
	if userType == UserType.Visitor then
		print('游客登陆')
		return visitorLogin(data, session)
	elseif userType == UserType.Wechat then
		print('微信登陆')
		return wechatLogin(data, session)
	end
end

function CMD.logout()

end

skynet.start(function()
	skynet.dispatch("lua", function(session, source, cmd, ...)
		local f = CMD[cmd]
		skynet.ret(skynet.pack(f(...)))
	end)

	mysqldb = skynet.queryservice('mysqldb')
end)