local skynet = require "skynet"
local json = require "cjson"
local log = require "log"
local pb = require "protobuf"
local io = require "io" 
local crc32 = require "crc32" 
local tool = require "tool"

--协议号映射表
local name2code = {}
local code2name = {}

--打印二进制string，用于调试
local function bin2hex(s)
    s=string.gsub(s, "(.)", function (x) return string.format("%02X ", string.byte(x)) end)
    return s
end

local M = {}

--cmd:login.Login
--checkcode:1234
--msg:{account="1",password="1234"}
function M.pack(pbName, msg, check)
	--格式说明
	--> >:big endian
	-->I4:前面无符号int 后面内容的长度
	-->I2:无符号short 命令字
    -->I4:无符号int check 
	
	--code
	local code = msg.request.code
	if not code then
		log.error(string.format("protopack_pb fail, pbName:%s", pbName or "nil"))
		return
	end
	--check
	check = check or 0
	--pbstr
	local pbstr = pb.encode(pbName, msg)
	local pblen = string.len(pbstr)
	--len
	local len = 4 + 2 + pblen
	--组成发送字符串
	local f = string.format(">I4I2I4c%d", pblen)
	local str = string.pack(f, len, code, check, pbstr)
	--调试
	log.info("send:"..bin2hex(str))
	log.info(string.format("send: code(%0x04x) pbName(%s) msg->%s check(%d)", code, pbName, tool.dump(msg)), check)
    return str
end

function M.unpack(str)
	log.info("recv:"..bin2hex(str))
	local pblen = string.len(str)-4-2-4
	local f = string.format(">I4I2I4c%d", pblen)
	local len, code, check, pbstr = string.unpack(f, str)
	log.info("recv pbstr:"..bin2hex(pbstr))
	-- local cmd = code2name[code]
	local msg = pb.decode("common.BaseReq", pbstr)
	local code = msg and msg.request.code
	if not code then
		log.info("recv:code(%d) but not regiest", code)
		return 
	end
	local pbName = "hall.LoginReq"
	local msg = pb.decode(pbName, pbstr)
	log.info("recv: code(%0x04x) pbName(%s) msg->%s check(%d)", code, pbName, tool.dump(msg), check)
    return code, pbName, msg, check
end

--本地测试解包使用,因为前两个字节是协议包大小。网络传递的会被拿掉。本地传递的不会
function M.local_unpack(str)
    log.info("recv:"..bin2hex(str))
    local pblen = string.len(str)-4-4-2
    local f = string.format("> i2 i4 I4 c%d", pblen)
    local len,check, code, pbstr = string.unpack(f, str)
    log.info("recv pbstr:"..bin2hex(pbstr))
    local cmd = code2name[code]
    if not cmd then
        log.info("recv:code(%d) but not regiest", code)
        return
    end
    local msg = pb.decode(cmd, pbstr)

    log.info("recv:cmd(%s) check(%d) msg->%s", cmd, check, tool.dump(msg))
    return cmd, check, msg
end

return M


