root = "$ROOT/"
skynet_root = "$SKYNET_ROOT/"

logpath = root .. "run"
log_level = "debug"

thread = 1
harbor = 0
bootstrap = "snlua bootstrap"	-- The service for bootstrap

runconfig = "runconfig"
start = "main"	-- main script

lualoader = skynet_root  ..  "lualib/loader.lua"
preload    = root .. "preload/preload.lua"

luaservice = skynet_root .. "service/?.lua;" .. skynet_root .. "test/?.lua;" .. skynet_root .. "examples/?.lua"
lua_path = skynet_root .. "lualib/?.lua;" .. skynet_root .. "lualib/?/init.lua;" .. skynet_root .. "examples/?.lua"
lua_cpath = skynet_root  ..  "luaclib/?.so"
snax = skynet_root .. "examples/?.lua;" .. skynet_root .. "test/?.lua"
-- snax_interface_g = "snax_g"
cpath = skynet_root .. "cservice/?.so"

--our path
luaservice = root .. "service/?.lua;" .. root .. "service/?/main.lua;" .. luaservice
lua_path = root .. "preload/?.lua;" .. root .. "cfg/?.lua;" .. root .. "lualib/?.lua;" .. lua_path
lua_cpath = root .. "luaclib/?.so;" .. lua_cpath
cpath = root .. "cservice/?.so;" ..cpath


if $DAEMON then
	logger = root .. "run/skynet.log"
	daemon = root .. "run/skynet.pid"
end
