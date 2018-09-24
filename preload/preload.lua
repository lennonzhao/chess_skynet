inspect = require "inspect"
class   = require "middleclass"

require "error_code"
require "logger_api"
require "functions"

local fixStart  = "\n            ||||||||||||||||t||||||||||||\n"
local fixEnd    = "\n            ||||||||||||||||E N D||||||||||||"
function dump(value, tag)
    if DEBUG == 0 then return end
    tag = tag or 'START'
    local prefix = string.gsub(fixStart, "t", tag)
    local timerTb = os.date("*t", os.time())
    local prefixTb = {
        "[",
        string.format("%02d:%02d", timerTb.min, timerTb.sec),
        "] ",
    }
    print(table.concat(prefixTb), prefix .. inspect(value, {indent="    "}) .. fixEnd)
end