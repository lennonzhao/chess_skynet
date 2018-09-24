local skynet = require "skynet"
local json = require "cjson"

local function main()
    skynet.newservice("debug_console", 8081)

    printDebug('debug')
    printInfo('info')
    printError('error')

    dump(json.encode({
        a = 'b',
        c = 11,
    }))


    -- 登陆服务
    -- local login = skynet.newservice("hall")
    -- skynet.call(login, "hall", "start", {
    --     port = 60000,
    --     maxclient = 1000,
    --     nodelay = true,
    -- })
    -- -- base_app_mgr
    -- skynet.uniqueservice("base_app_mgr")
    -- skynet.call("base_app_mgr", "lua", "start")

    -- -- area_mgr
    -- skynet.uniqueservice("area_mgr")
    -- skynet.call("area_mgr", "lua", "start")

    -- -- room_mgr
    -- skynet.uniqueservice("room_mgr")

    skynet.uniqueservice("pbc")

    skynet.exit()
end

skynet.start(main)
