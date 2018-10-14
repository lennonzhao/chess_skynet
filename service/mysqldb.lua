local skynet = require "skynet"
local mysql = require "mysql"
local runconfig = require "runconfig"
local config = runconfig.service.dbproxy_common.accountdb

local CMD = {}
--[[
	-- update insert 等语句 返回
	# server_status 状态2表示成功
	{
	  	message = &Records: 2  Duplicates: 0  Warnings: 0 ,
	  	warning_count = 0 ,
	  	server_status = 2 ,
	  	affected_rows = 2 ,
	  	insert_id = 0 ,
	}

	--失败情况
	{
	 	errno = 1146 ,
	 	badresult = true ,
	 	sqlstate = 42S02 ,
	 	err = Table 'skynet.noexist' doesn't exist ,
	}
]]

function CMD.execute(sql)
	local function on_connect(db)
		db:query("set charset utf8");
	end
	local db = mysql.connect({
		host = config.host,
		port = config.port,
		database = config.database,
		user = config.user,
		password = config.password,
		max_packet_size = 1024 * 1024,
		on_connect = on_connect
	})
	if not db then
		return false, "failed to connect"
	end
	print("success to connect to mysql server")
	local ret, res = db:query(sql)
	db:disconnect()

	dump(ret, '执行sql结果 2')
	dump(res, '执行sql结果 1')
	if ret.errno then
		return false, ret.err .. "[" .. ret.errno .. "]"	
	else
		return true, ret
	end
end

skynet.start(function()
	skynet.dispatch("lua", function(session, addr, cmd, ...)
		local f = CMD[cmd]
		skynet.ret(skynet.pack(f(...)))
	end)
end)