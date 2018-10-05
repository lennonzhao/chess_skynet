json = require "cjson"

require "error_code"
require "logger_api"
require "functions"
require "constants"

local inspect_lib = require "inspect"
local fixStart  = "\n||||||||||||||||t||||||||||||\n"
local fixEnd    = "\n||||||||||||||||E N D||||||||||||"
function dump(value, tag)
    tag = tag or 'START'
    local prefix = string.gsub(fixStart, "t", tag)
    local timerTb = os.date("*t", os.time())
    local prefixTb = {
        "[",
        string.format("%02d:%02d", timerTb.min, timerTb.sec),
        "] ",
    }
    printInfo(table.concat(prefixTb), prefix .. inspect_lib(value, {indent="    "}) .. fixEnd)
end

function inspect(value)
  return inspect_lib(value, {
    process = function(item, path)
      if type(item) == "function" then
        return nil
      end

      if path[#path] == inspect_lib.METATABLE then
        return nil
      end

      return item
    end,
    newline = " ",
    indent = ""
  })
end