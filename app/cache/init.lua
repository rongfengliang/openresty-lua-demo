
local json = require("cjson")
local log = ngx.log
local ERR = ngx.ERR
local function callback(username)
    log(ERR, "err message is : ", "from callback")
    return { name = "John Doe", email = "john@example.com" }
end

local function init()
    local user, err = cache:get("my_key", nil, callback, "John Doe")
    ngx.say(json.encode(user)) -- "John Doe"
end

return init;