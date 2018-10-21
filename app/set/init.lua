local function init()
    -- body
    ngx.say(ngx.var.token)
end
return init;