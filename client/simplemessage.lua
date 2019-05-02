local socket = require "simplesocket"
local protopack = require "lualib.protopack_pbc"

local message = {}
local var = {
	session_id = 0,
	session = {},
	object = {},
}

function message.register()
	local pb_files = {
		"proto/common.pb",
		"proto/hall/hall.pb",
	}
	for _,v in ipairs(pb_files) do
		protopack.register(v)
	end
end

function message.peer(addr, port)
	var.addr = addr
	var.port = port
end

function message.connect()
	print('connect', var.addr, var.port)
	socket.connect(var.addr, var.port)
	print('connect')
	socket.isconnect()
end

function message.bind(obj, handler)
	var.object[obj] = handler
end

function message.request(name, args)
	var.session_id = var.session_id + 1
	var.session[var.session_id] = { name = name, req = args }
	socket.write(var.request(name, args, var.session_id))
	return var.session_id
end

function message.send_request(name, msg)
	print 'send_request'
	dump(msg)
	var.session_id = var.session_id + 1
	var.session[var.session_id] = {name = name, req = msg}
	local str = protopack.packHead(10000, msg, 0)
	local body = protopack.
	local package = protopack.pack(10000, msg, 0)
	socket.write(package)
	return var.session_id
end

function message.update(ti)
	local msg = socket.read(ti)
	if not msg then
		return false
	end
	-- print(msg)
	local packet, pbStr, session = protopack.unpack(msg)
	print(packet, pbStr, session)
	-- -- local t, session_id, resp, err = var.host:dispatch(msg)
	-- if t == "REQUEST" then
		-- for obj, handler in pairs(var.object) do
		-- 	local f = handler[session_id]	-- session_id is request type
		-- 	if f then
		-- 		local ok, err_msg = pcall(f, obj, resp)	-- resp is content of push
		-- 		if not ok then
		-- 			print(string.format("push %s for [%s] error : %s", session_id, tostring(obj), err_msg))
		-- 		end
		-- 	end
		-- end
	-- else
	-- 	local session = var.session[session_id]
	-- 	var.session[session_id] = nil

	-- 	for obj, handler in pairs(var.object) do
	-- 		if err then
	-- 			local f = handler.__error
	-- 			if f then
	-- 				local ok, err_msg = pcall(f, obj, session.name, err, session.req, session_id)
	-- 				if not ok then
	-- 					print(string.format("session %s[%d] error(%s) for [%s] error : %s", session.name, session_id, err, tostring(obj), err_msg))
	-- 				end
	-- 			end
	-- 		else
	-- 			local f = handler[session.name]
	-- 			if f then
	-- 				local ok, err_msg = pcall(f, obj, session.req, resp, session_id)
	-- 				if not ok then
	-- 					print(string.format("session %s[%d] for [%s] error : %s", session.name, session_id, tostring(obj), err_msg))
	-- 				end
	-- 			end
	-- 		end
	-- 	end
	-- end

	return true
end

return message
