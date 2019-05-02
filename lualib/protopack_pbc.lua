local pb = require "protobuf"
local ret, skynet = pcall(function() 
	return require "skynet"
end)
if not ret then skynet = nil end

--协议号映射表
local print = skynet and skynet.error or print

--打印二进制string，用于调试
local function bin2hex(s)
    s=string.gsub(s, "(.)", function (x) return string.format("%02X ", string.byte(x)) end)
    return s
end

local M = {}

function M.register(file)
	if skynet then
		skynet.call(M.pbc, "lua", "register", file)
	else
		pb.register_file(file)
	end
end

function M.dump(pbName, msg, name)
	if skynet then
		skynet.call(M.pbc, "lua", "dump", pbName, msg, tag)
	end
end

function M.getCommand()
	if skynet then
		return skynet.call(M.pbc, "lua", "getCommand")
	end
end

local function _encode(pbName, msg)
	if skynet then
		-- print('_encode', pbName, msg)
		return skynet.call(M.pbc, "lua", "encode", pbName, msg)
	else
		return pb.encode(pbName, msg)
	end
end

local function _decode(pbName, pbstr)
	if skynet then
		-- print('_decode', pbName, pbstr)
		return skynet.call(M.pbc, "lua", "decode", pbName, pbstr)
	else
		return pb.decode(pbName, pbstr)
	end
end

local function _findReqName(cmd)
	if skynet then
		return skynet.call(M.pbc, "lua", "findReqName", cmd)
	else
		return "hall.LoginReq"
	end
end

local function _findRspName(cmd)
	if skynet then
		return skynet.call(M.pbc, "lua", "findRspName", cmd)
	else
		return "hall.LoginReq"
	end
end

local function _pack(status, name, msg, msgType)
	--pb协议头
    status = status or 0
    local msg_head = {
        msgType = msgType or 2,  --响应包
        pbName = name,
        status = status,
    }
    local buf_head = _encode("common.MsgHead", msg_head)
    local pack
    local len = 2 + #buf_head
    if status >= 0 then
	    --pb协议数据
	    local buf_body = _encode(name, msg)
	    len = len + #buf_body + 1
	    pack = string.pack(">Hs2s2c1", len, buf_head, buf_body, 't')
	else
		len	 = len + 1
		pack = string.pack(">Hs2s1", len, buf_head, "", 't')
	end
    -- if status == 0 then
    -- 	local buf_body = skynet.call()
    --     local buf_body = skynet.call(M.pbc, "lua", "encode", name, msg)
    --     len = 2 + #buf_head + 2 + #buf_body + 1
    --     pack = string.pack(">Hs2s2c1", len, buf_head, buf_body, 't')
    -- else
    --     --返回码不为0时，只下发pb协议头
    --     len = 2 + #buf_head + 1
    --     pack = string.pack(">Hs2s1", len, buf_head, 't')
    -- end
    return pack
end

function M.pack(status, name, msg)
	return _pack(status, name, msg, 2)
end

function M.packReq(name, msg)
	return _pack(0, name, msg, 1) --请求
end

function M.unpack(data)
    print("---------------Unpack")
    local buf_head, buf_body, ch_end = string.unpack(">s2s2c1", data)
    local msg_head = _decode("common.MsgHead", buf_head)
    local msg_body = _decode(msgHead.pbName, buf_body)
    return msg_head.msgname, msg_body, msg_head.status
end


-- -- 格式说明
-- --> <:小端
-- -->I4:前面无符号int 后面内容的长度
-- -->I2:无符号short 命令字
-- -->I4:无符号int session 
-- function M.pack(cmd, msg, session)
-- 	session = session or 0
-- 	msg.result = msg.result or {}
-- 	msg.result.request = {
-- 		code = cmd,
-- 		api = 102,
-- 	}
-- 	local gameId = 0
-- 	local pbName = _findRspName(cmd)
-- 	print(pbName)
-- 	local pbstr = _encode(pbName, msg)
-- 	local pblen = string.len(pbstr)
-- 	--组成发送字符串 前面两个字节表示包的总长度
-- 	local str = string.pack(">HI4HI4s2", pblen + 10 + 2, pblen + 6, gameId, session, pbstr)

-- 	local str = string.pack(">H")
-- 	-- print("send:", bin2hex(str), string.len(str), pblen)
-- 	-- dump(msg, string.format("send: %s 0x%04x", pbName, cmd))
--     return str
-- end

-- function M.packHead(cmd, msg, session)
-- 	session = session or 0
-- 	msg.result = msg.result or {}
-- 	msg.result.request = {
-- 		code = cmd,
-- 		api = 102,
-- 	}
-- 	local gameId = 0
-- 	local pbstr = _encode("common.BaseRsp", msg)
-- 	local pblen = string.len(pbstr)
-- 	--组成发送字符串 前面两个字节表示包的总长度
-- 	local str = string.pack(">HI4HI4s2", pblen + 10 + 2, pblen + 6, gameId, session, pbstr)

-- 	-- print("send:", bin2hex(str), string.len(str), pblen)
-- 	-- dump(msg, string.format("send: %s 0x%04x", pbName, cmd))
--     return str
-- end

-- function M.packReq(cmd, msg, session)
-- 	session = session or 0
-- 	msg.request = msg.request or {}
-- 	msg.request.code = cmd
-- 	msg.request.api = 102

-- 	local gameId = 0
-- 	local pbstr = _encode("common.BaseReq")

-- end

-- function M.unpackHead(str)
-- 	local len, gameId, session, pbstr = string.unpack(">I4I2I4s2", str)
-- 	-- print("unpack", bin2hex(pbstr))
-- 	-- print("pblen", string.len(pbstr))
-- 	return _decode("common.BaseReq", pbstr), pbstr, session
-- end

-- function M.unpack(str)
-- 	local msgHead, pbstr, session = M.unpackHead(str)
-- 	if not msgHead then print("cmd not register") return end

-- 	local code = msgHead.request.code
-- 	local pbName = _findReqName(code)
-- 	local msg = _decode(pbName, pbstr)

-- 	-- print(string.format("recv: code(0x%04x) pbName(%s) msg->%s session(%d)", code, pbName, msg, session))
--     return code, msg, pbName, session
-- end

-- --本地测试解包使用,因为前两个字节是协议包大小。网络传递的会被拿掉。本地传递的不会
-- function M.local_unpack(str)
--     print("recv:"..bin2hex(str))
--     local pblen = string.len(str)-4-4-2
--     local f = string.format("> i2 i4 I4 c%d", pblen)
--     local len,check, code, pbstr = string.unpack(f, str)
--     print("recv pbstr:"..bin2hex(pbstr))
--     local cmd = code2name[code]
--     if not cmd then
--         print("recv:code(%d) but not regiest", code)
--         return
--     end
--     local msg = pb.decode(cmd, pbstr)

--     print(string.format("recv:cmd(%s) check(%d) msg->%s", cmd, check, msg))
--     return cmd, check, msg
-- end

if skynet then
	skynet.init(function()
		M.pbc = skynet.queryservice('pbc')
	end)
end

return M


