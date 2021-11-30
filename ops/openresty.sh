#!/bin/bash

docker run --name openresty-demo --rm \
-p 80:80 \
-v "$(pwd)"/openresty/conf/nginx.conf:/usr/local/openresty/nginx/conf/nginx.conf \
-v "$(pwd)"/openresty/log/:/usr/local/openresty/nginx/logs/ \
-v "$(pwd)"/openresty/lua/:/usr/local/openresty/nginx/lua/ \
openresty/openresty:1.19.9.1-3-centos-rpm
