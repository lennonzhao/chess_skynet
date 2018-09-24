app_root = "$ROOT/"
skynet_root = "$SKYNET_ROOT/"

logpath = app_root .. "run"
log_level = "debug"

thread = 1
harbor = 0
bootstrap = "snlua bootstrap"	-- The service for bootstrap

runconfig = "runconfig"
start = "main"	-- main script
nodename = "node1"
-- snax_interface_g = "snax_g"

lualoader 	= 	skynet_root  ..  "lualib/loader.lua"
preload    	= 	app_root .. "preload/preload.lua"

luaservice 	= 	skynet_root .. "service/?.lua;" .. 
				skynet_root .. "test/?.lua;" .. 
				skynet_root .. "examples/?.lua"

lua_path 	= 	skynet_root .. "lualib/?.lua;" .. 
				skynet_root .. "lualib/compat10/?.lua;" .. 
				skynet_root .. "lualib/?/init.lua;" .. 
				skynet_root .. "examples/?.lua"

lua_cpath 	= 	skynet_root  ..  "luaclib/?.so"
snax 		= 	skynet_root .. "examples/?.lua;" .. 
				skynet_root .. "test/?.lua"
cpath 		= 	skynet_root .. "cservice/?.so"

--our path
luaservice  = 	app_root .. "service/?.lua;" .. 
			 	app_root .. "service/?/main.lua;" .. 
			 	app_root .. "service/?/?.lua;" .. 
			 	app_root .. "service/agent/?.lua;" .. 
			 	app_root .. "service/room/?.lua;" .. 
			 	luaservice

lua_path 	= 	app_root .. "preload/?.lua;" .. 
				app_root .. "cfg/?.lua;" .. 
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
