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
    
    local watchdog = skynet.newservice("watchdog")
    skynet.call(watchdog, "lua", "start", {
        port = 7009,
        maxclient = max_client,
        nodelay = true,
    })

    skynet.error("Watchdog listen on", 7009)
    skynet.exit()
end)
