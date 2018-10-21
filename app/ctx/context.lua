local  function app()
    -- body
   ngx.say(ngx.ctx.foo)
   ngx.req.set_header("Host", "dalongdemo.com")
   ngx.print(ngx.req.get_headers()["host"])

end
return app