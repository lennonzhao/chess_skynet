local skynet = require "skynet"
local max_client = 64

skynet.start(function()
    skynet.error("Server start")
    
    if not skynet.getenv "daemon" then
        local console = skynet.newservice("console")
    end
    skynet.newservice("debug_console",8000)

    skynet.uniqueservice("pbc")
    -- skynet.uniqueservice("mysqldb")
    
    -- local watchdog = skynet.newservice("watchdog")
    -- skynet.call(watchdog, "lua", "start", {
    --     port = 60000,
    --     maxclient = max_client,
    --     nodelay = true,
    -- })
    local proto = skynet.uniqueservice "protoloader"
    skynet.call(proto, "lua", "load", {
        "proto.c2s",
        "proto.s2c",
    })
    
    local hub = skynet.uniqueservice "hub"
    skynet.call(hub, "lua", "open", "0.0.0.0", 7002)

    skynet.error("Watchdog listen on", 7002)
    skynet.exit()
end)
