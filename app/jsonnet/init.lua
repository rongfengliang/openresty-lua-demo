local jso = require "jsonnet"
local json = require "cjson"

local function init()
    jsonnet = jso:new()
    jsonnet:make()
    res,err = jsonnet:evaluate_file("t.jsonnet")
    if err == nil then
	   ngx.say(json.encode(res))
    else
        ngx.say(json.encode(err))
    end
end

return init;