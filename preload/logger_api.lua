local skynet = require "skynet"
local table = table

-- 日志级别
local log_level = {
  LOG_DEFAULT   = 1,
  LOG_TRACE     = 1,
  LOG_DEBUG     = 2,
  LOG_INFO      = 3,
  LOG_WARN      = 4,
  LOG_ERROR     = 5,
  LOG_FATAL     = 6,
}

local defaultLevel = tonumber(skynet.getenv "log_default_lv") or log_level.LOG_DEBUG
local prefix = ""
function LOG_PREFIX(pre)
  prefix = "[" .. pre .. "]"
end 

--日志 --
local function logger(str, level, color)
  return function (fmt, ...)
    if level >= defaultLevel then
        print(...)
        local info = table.pack(...)
        info[#info+1] = "\x1b[0m"
        skynet.error(string.format("%s%s%s", color, prefix, str), table.unpack(info)) 
    end
  end
end


local M = {
  printTrace = logger("[trace]", log_level.LOG_TRACE, "\x1b[35m"),
  printDebug = logger("[debug]", log_level.LOG_DEBUG, "\x1b[32m"),
  printInfo  = logger("[info]", log_level.LOG_INFO, "\x1b[34m"),
  printWarn  = logger("[warning]", log_level.LOG_WARN, "\x1b[33m"),
  printError = logger("[error]", log_level.LOG_ERROR, "\x1b[31m"),
  printFatal = logger("[fatal]", log_level.LOG_FATAL,"\x1b[31m")
}

M.TRACE = M.printTrace
M.DEBUG = M.printDebug
M.INFO = M.printInfo
M.WARN = M.printWarn
M.ERROR = M.printError
M.FATAL = M.printFatal

-- 错误日志 --

setmetatable(M, {
  __call = function(t)
    for k, v in pairs(t) do
      _G[k] = v
    end
  end,
})

M()

return M
