local skynet = require "skynet"

local Person = class("Person")
function Person:ctor(sex)
    self.mAge = 1
    self.mSex = sex
end

function Person:debug()
    printInfo("self.mAge = %d", self.mAge)
    printInfo("self.mSex = %d", self.mSex)
end

local Man = class("Man", Person)
function Man:ctor(sex)
    Man.super.ctor(self, sex)
    self.mSex = sex
end

local function main()
    skynet.newservice("debug_console", 8081)

    printDebug('debug')
    printInfo('info')
    printError('error')

    local person = Person.new(-1)
    person:debug()
    
    local man = Man.new(2)
    man:debug()

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
