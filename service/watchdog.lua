local skynet = require "skynet"
local uuid = require "uuid"
local runconf = require(skynet.getenv("runconfig"))
local protopack = require("protopack_" .. runconf.protopack)
local socket = require "skynet.socket"

local Command
local CMD = {}
local SOCKET = {}
local gate
local login
local agent = {}

function SOCKET.open(fd, addr)
	uuid.seed()
	local c = {}
	c.fd = fd
	c.ip = string.match(addr, "([%d.]+):(%d+)")
	c.agent = nil
	c.agentaddr = nil
	c.watchdog = skynet.self()
	c.session = uuid()
	
	skynet.error("New client from : " .. c.ip)

	skynet.call(gate, "lua", "accept", fd)
	-- skynet.call(gate, "lua", "forward", fd)
end

local function close_agent(fd)
	local a = agent[fd]
	agent[fd] = nil
	if a then
		skynet.call(gate, "lua", "kick", fd)
		-- disconnect never return
		skynet.send(a, "lua", "disconnect")
	end
end

function SOCKET.close(fd)
	print("socket close",fd)
	close_agent(fd)
end

function SOCKET.error(fd, msg)
	print("socket error",fd, msg)
	close_agent(fd)
end

function SOCKET.warning(fd, size)
	-- size K bytes havn't send out in fd
	print("socket warning", fd, size)
end

function SOCKET.data(fd, code, msg)
	-- print("socket data", fd, msg)
	if code == Command.Login then
		-- 认证后
		local ret, info = skynet.call(login, "lua", "login", { client = fd, watchdog = skynet.self(), data = msg})
		-- 登陆成功后 创建一个agent
		-- if ret then
		-- 	agent[fd] = skynet.newservice("agent")
		-- 	skynet.call(gate, "lua", "forward", fd)
		-- 	skynet.call(agent[fd], "lua", "start", { gate = gate, client = fd, watchdog = skynet.self() })
		-- 	skynet.call(agent[fd], "lua", "loginSuc", { info = info })
		-- else
			local package = protopack.packHead(Command.Login, {
				result = {
					status = 2,
				}
			})
			socket.write(client_fd, package)
		-- end
	end
end

function CMD.start(conf)
	skynet.call(gate, "lua", "open" , conf)
end

function CMD.close(fd)
	close_agent(fd)
end

skynet.start(function()
	skynet.dispatch("lua", function(session, source, cmd, subcmd, ...)
		if cmd == "socket" then
			local f = SOCKET[subcmd]
			f(...)
			-- socket api don't need return
		else
			local f = assert(CMD[cmd])
			skynet.ret(skynet.pack(f(subcmd, ...)))
		end
	end)

	Command = protopack.getCommand()
	gate = skynet.newservice("gate")
	login = skynet.newservice("login")
end)
