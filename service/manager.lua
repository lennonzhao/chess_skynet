local skynet = require "skynet"
local service = require "service"
local runconfig = require(skynet.getenv("runconfig"))
local log = require "log"

local manager = {}
local users = {}
local pool = {}

local function new_agent()
	return table.remove(pool, 1) or skynet.newservice "agent"
end

local function free_agent(agent)
	-- kill agent, todo: put it into a pool maybe better
	-- skynet.kill(agent)
	if #pool >= runconfig.poolsize then
		skynet.kill(agent)
	else
		table.insert(pool, agent)
	end
end

function manager.assign(fd, userid)
	local agent
	repeat
		agent = users[userid]
		if not agent then
			agent = new_agent()
			if not users[userid] then
				-- double check
				users[userid] = agent
			else
				free_agent(agent)
				agent = users[userid]
			end
		end
	until skynet.call(agent, "lua", "assign", fd, userid)
	log("Assign %d to %s [%s]", fd, userid, agent)
end

function manager.exit(userid)
	users[userid] = nil
end

service.init {
	command = manager,
	info = users,
	init = function()
		for i=1, runconfig.poolsize do
			print('init pool')
			table.insert(pool, skynet.newservice "agent")
		end
	end
}


