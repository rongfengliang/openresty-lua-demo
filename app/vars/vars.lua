local json = require("cjson")
local function vars()
    -- body
    local str = ngx.req.raw_header()
    local result = {
        a= ngx.var.arg_a,
       -- h=str,
        org=ngx.headers,
        token=ngx.req.get_headers()["token"]
    };
    if result.token ~="dalong" then
        ngx.say("not a validate token")
    else
        ngx.say(result.token..result.a)
    end
    --ngx.say(json.encode(result))

    ngx.log(ngx.DEBUG,ngx.req.raw_header())
end
return vars