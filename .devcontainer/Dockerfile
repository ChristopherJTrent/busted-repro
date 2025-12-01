FROM alpine:3.22

# prerequisites for building native lua extensions on alpine, plus lua itself.
RUN apk add lua5.4-dev luarocks gcompat gcc libc-dev git
# allow use of `lua` and `luarocks` from the command line
RUN ln /usr/vbin/lua5.4 /usr/bin/lua; ln /usr/bin/luarocks-5.4 /usr/bin/luarocks
# install moonscript, busted, and luacov
RUN luarocks install moonscript && luarocks install busted && luarocks install luacov
