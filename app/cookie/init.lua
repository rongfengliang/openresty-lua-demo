local function init()
    -- body
    ngx.say(ngx.var.cookie_userid)
end

return init;