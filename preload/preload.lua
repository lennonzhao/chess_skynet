inspect = require "inspect"

require "error_code"
require "logger_api"
require "functions"

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
    printInfo(table.concat(prefixTb) .. prefix .. inspect(value, {indent="    "}) .. fixEnd)
end