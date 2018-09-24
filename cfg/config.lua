root = "$ROOT/"
skynet_root = "$SKYNET_ROOT"

logpath = root .. "run"
log_level = "debug"

thread = 1
harbor = 0
bootstrap = "snlua bootstrap"	-- The service for bootstrap

lualoader = root  ..  "skynet/lualib/loader.lua"
-- preload = "./examples/preload.lua"	-- run preload.lua before every lua service run

luaservice = root .. "skynet/service/?.lua;" .. root .. "skynet/test/?.lua;" .. root .. "skynet/examples/?.lua"
lua_path = root .. "skynet/lualib/?.lua;" .. root .. "skynet/lualib/?/init.lua"
lua_cpath = root  ..  "skynet/luaclib/?.so"
snax = root .. "skynet/examples/?.lua;" .. root .. "skynet/test/?.lua"
-- snax_interface_g = "snax_g"
cpath = root .. "skynet/cservice/?.so"

--our path
luaservice = root .. "service/?.lua;" .. root .. "service/?/main.lua;" .. luaservice
lua_path = root .. "lualib/?.lua;" .. lua_path
lua_cpath = root .. "luaclib/?.so;" .. lua_cpath
cpath = root .. "cservice/?.so;" ..cpath

start = "main"	-- main script

if $DAEMON then
	logger = root .. "run/skynet.log"
	daemon = root .. "run/skynet.pid"
end
