#!/bin/bash

docker run --name nginx-demo --rm \
-p 80:80 \
-p 81:81 \
-p 82:82 \
-v "$(pwd)"/nginx/www:/usr/share/nginx/html \
-v "$(pwd)"/nginx/conf/nginx.conf:/etc/nginx/nginx.conf \
-v "$(pwd)"/nginx/log:/var/log/nginx  \
nginx
