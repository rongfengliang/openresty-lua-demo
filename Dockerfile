FROM openresty/openresty:alpine-fat
RUN  mkdir -p /usr/lib64 && mkdir -p /usr/local/share
RUN  apk add expat-dev
RUN /usr/local/openresty/luajit/bin/luarocks install graphql
RUN /usr/local/openresty/luajit/bin/luarocks install luaexpat
RUN /usr/local/openresty/luajit/bin/luarocks install luaxpath
RUN opm get thibaultcha/lua-resty-mlcache