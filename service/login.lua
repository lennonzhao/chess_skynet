local skynet = require "skynet"
local runconf = require(skynet.getenv("runconfig"))
local protopack = require("protopack_" .. runconf.protopack)
local mysqldb

local CMD = {}

function CMD.login(bundle)
	local fd = bundle.fd
	local watchdog = bundle.watchdog
	local data = bundle.data

	local sql = "select * from t_reg where imei = '%s';", data.imei
	local ret, res = skynet.call(mysqldb, "lua", "execute", sql)
	if ret then
		return true, {
			
		}
	else
		return false, res
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