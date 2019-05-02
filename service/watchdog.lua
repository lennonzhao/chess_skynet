local skynet = require "skynet"
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
	skynet.error("New client from : " .. addr)
	skynet.call(gate, "lua", "accept", fd)
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

function SOCKET.data(fd, msg)
	print('socket data', msg)

	-- if code == Command.Login then
	-- 	-- 认证后
	-- 	dump(msg, '登录请求')
	-- 	local status, info = skynet.call(login, "lua", "login", fd, msg, session)
	-- 	-- 登陆成功后 创建一个agent
	-- 	if status == AUTH_ERROR.login_success then
	-- 		agent[fd] = skynet.newservice("agent")
	-- 		skynet.call(agent[fd], "lua", "start", { gate = gate, client = fd, watchdog = skynet.self() })

	-- 		local package = protopack.pack(Command.Login, info)
	-- 		socket.write(fd, package)
	-- 	else
	-- 		-- 登陆失败
	-- 		print('登陆失败', status)
	-- 		local package = protopack.packHead(Command.Login, {
	-- 			result = {
	-- 				status = status,
	-- 			}
	-- 		})
	-- 		socket.write(fd, package)
	-- 	end
	-- else

	-- end
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
