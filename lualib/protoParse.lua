local skynet = require "skynet"
local root = skynet.getenv("app_root")
local daemon = skynet.getenv("daemon")
local unpack = unpack or table.unpack
local print = printWarn

local M = {}
local ProtoMessages = {}

-- 一次把所有的解析
function M.parseFiles(files)
	local protos = {}
	for i, file in ipairs(files) do
		local path = string.format('%s%s.proto', root, string.sub(file, 1, string.len(file) - 3))
		local content = io.readfile(path)
		if content then
			local start, last, key = string.find(content, "package (.-);")
			table.insert(protos, {
				name = key,
				content = content,
			})
		else
			WARN('prase proto file: ', path, 'failed!')
		end
	end

	for i, proto in ipairs(protos) do
		M.parseContent(proto, ProtoMessages)
	end
end

local BasicType = {
	["string"] = true,
	["uint32"] = true,
	["int32"] = true,
	["uint64"] = true,
	["int64"] = true,
	["bytes"]  = true,
	["bool"]  = true,
}

local RecordType = {
	"optional", "required", "repeated"	
}
function M.parseContent(proto, tb)
	local name = proto.name or ""
	local content = proto.content or ""
	tb[name] = tb[name] or {}

	for message in string.gmatch(content, "message.-{.-}") do
       	-- print(message)
       	local start, last, key = string.find(message, "message (.-){")
       	if key then
       		key = string.gsub(string.trim(key), "{", "")
       		tb[name][key] = {}
       		local pbMessage = tb[name][key]
	      	-- print("解析出协议" .. name .. "." .. key)
	       	for i, recordType in ipairs(RecordType) do
	       		for line in string.gmatch(message, recordType .. ".-=.-;") do
		       		line = string.gsub(line, ";", "")
		       		local pre, id = unpack(string.split(line, "="))
		       		pre = pre .. " " --避免最后没有空格 无法匹配
		       		local map = {}
					for record in string.gmatch(pre, ".-%s+") do
		       			map[#map + 1] = string.trim(record)
		       		end
		       		-- dump(map)
		       		if #map == 3 and tonumber(id) then
		       			-- 如果非基本类型 且没有.连接符 则手动添加
		       			if not BasicType[map[2]] and #string.split(map[2], ".") == 1 then
		       				map[2] = name .. "." .. map[2]
		       			end
		       			local pbRecord = {
			       			id = tonumber(id),
			       			msgType = map[1],
			       			type = map[2],
			       			key = map[3],
			       		}
			       		table.insert(pbMessage, pbRecord)
		       		end
		       	end
	       	end
	       	table.sort(pbMessage, function(pb1, pb2)
	       		return pb1.id < pb2.id
	       	end)
	    else
	    	print("解析失败" .. name)
	    end
    end
end

local MAX_INDENT = 5
function M.dump(pbName, packet, tag)
	if daemon then return end
	local getPbMessage = function(_pbName)
		local _pbKeys = string.split(_pbName, ".")
		local moduleName, messageName = unpack(_pbKeys)
		-- print("moduleName =", moduleName,  "messageName", messageName)
		if moduleName and messageName then
			return ProtoMessages[moduleName] and ProtoMessages[moduleName][messageName]
		end
	end
	local indentTable = {}
	local function dumpMessageType(packet, _pbName, tb)
		-- print(_pbName)
		-- dump(tb, "dumpMessageType tb")
		local pbMessage = getPbMessage(_pbName)
		if not pbMessage then 
			print("error dump: " .. _pbName)
			return
		end
		-- dump(pbMessage, "dumpMessageType getPbMessage")
		for i, pb in ipairs(pbMessage) do
			local value = packet[pb.key]
			-- print('key=', pb.key)
			-- print('msgType=', pb.msgType)
			-- print('value=', value)
			if pb.msgType == "repeated" then
				-- 如果是基础类型
				value = value or {}
				tb[pb.key] = {}
				if BasicType[pb.type] then
					for i, val in ipairs(value) do
						if pb.type == "string" or pb.type == "bytes" then
							val = tostring(val)
						end
						table.insert(tb[pb.key], val)
					end
				else -- message
					for i, record in ipairs(value) do
						local _tb = {}
						table.insert(tb[pb.key], _tb)
						dumpMessageType(record, pb.type, _tb)
					end
				end
			elseif not BasicType[pb.type] then  --非基础类型
				tb[pb.key] = {}
				indentTable[pb.key] = indentTable[pb.key] or 0
				indentTable[pb.key] = indentTable[pb.key] + 1
				if indentTable[pb.key] <= MAX_INDENT then
					dumpMessageType(value, pb.type, tb[pb.key])
				end
			else
				if pb.type == "string" or pb.type == "bytes" then
					value = tostring(value)
				end
				tb[pb.key] = value
			end
		end
	end
	local pbTable = {}
	dumpMessageType(packet, pbName, pbTable)
	-- dump(pbTable, tag)
end

return M