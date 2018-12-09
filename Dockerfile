FROM openresty/openresty:alpine-fat
RUN  mkdir -p /usr/lib64 && mkdir -p /usr/local/share
RUN /usr/local/openresty/luajit/bin/luarocks install graphql
RUN opm get thibaultcha/lua-resty-mlcache