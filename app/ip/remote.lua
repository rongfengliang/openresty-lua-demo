local function ip()
    ngx.say(ngx.var.remote_addr)
end
return ip