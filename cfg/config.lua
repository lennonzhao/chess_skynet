app_root = "$ROOT/"
skynet_root = "$SKYNET_ROOT/"

logpath = app_root .. "run"
log_level = 2

thread = 1
harbor = 0
bootstrap = "snlua bootstrap"	-- The service for bootstrap

runconfig = "runconfig"
start = "main"	-- main script
nodename = "node1"
-- snax_interface_g = "snax_g"

-- skynet init
lualoader 	= 	skynet_root  ..  "lualib/loader.lua"
preload    	= 	app_root .. "preload/preload.lua"   --每个服务启动之前预先加载的配置

luaservice 	= 	skynet_root .. "service/?.lua;"

lua_path 	= 	skynet_root .. "lualib/?.lua;" .. 
				skynet_root .. "lualib/compat10/?.lua;" .. 
				skynet_root .. "lualib/?/init.lua;"

lua_cpath 	= 	skynet_root .. "luaclib/?.so"

snax 		= 	""

cpath 		= 	skynet_root .. "cservice/?.so"

-- our path
luaservice  = 	app_root .. "service/?.lua;" .. 
			 	app_root .. "service/?/main.lua;" .. 
			 	app_root .. "service/?/?.lua;" .. 
			 	app_root .. "service/gate/?.lua;" .. 
			 	luaservice

lua_path 	= 	app_root .. "preload/?.lua;" .. 
				app_root .. "cfg/?.lua;" .. 
           		app_root .. "mod/?.lua;".. 
				app_root .. "lualib/?.lua;" ..
				lua_path

lua_cpath 	= 	app_root .. "luaclib/?.so;" .. 
				lua_cpath

cpath 		= 	app_root .. "cservice/?.so;" .. 
				cpath

if $DAEMON then
	logger = app_root .. "run/skynet.log"
	daemon = app_root .. "run/skynet.pid"
end
