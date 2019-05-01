local PATH,IP = ...
print(PATH, IP)
IP = IP or "127.0.0.1"

package.path = string.format("%s/client/?.lua;%s/lualib/?.lua;%s/skynet/lualib/?.lua", PATH, PATH, PATH)
package.cpath = string.format("%s/3rd/lsocket/?.so;%s/skynet/luaclib/?.so;%s/luaclib/?.so;%s/skynet/3rd/lua/?.so", PATH, PATH, PATH, PATH)

local message = require "simplemessage"

message.register()

message.peer(IP, 5678)
message.connect()

local event = {}

message.bind({}, event)

function event:__error(what, err, req, session)
	print("error", what, err)
end

function event:ping()
	print("ping")
end

function event:signin(req, resp)
	print("signin", req.userid, resp.ok)
	if resp.ok then
		message.request "ping"	-- should error before login
		message.request "login"
	else
		-- signin failed, signup
		message.request("signup", { userid = "alice" })
	end
end

function event:signup(req, resp)
	print("signup", resp.ok)
	if resp.ok then
		message.request("signin", { userid = req.userid })
	else
		error "Can't signup"
	end
end

function event:login(_, resp)
	print("login", resp.ok)
	if resp.ok then
		message.request "ping"
	else
		error "Can't login"
	end
end

function event:push(args)
	print("server push", args.text)
end

-- message.request("signin", { userid = "alice" })
message.send_request("hall.LoginReq", {
	request = {
		code = 0x0001,
		api = 122,
	},
    basic = {
        api = 122,
        hotCode = 999,
        userType = 0,
        verName = "1.0.4"
    },
    imei = "00b204e9800998ecf8427e6878553627",
    modelName = "Coolpad 5219",
    os = "windows",
    simType = 0,
    tel = "",
    thirdInfo = ""
})

while true do
	message.update()
end