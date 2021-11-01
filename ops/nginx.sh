#!/bin/bash

docker run --name nginx-demo -d \
-p 80:80 \
-v "$(pwd)"/nginx/www:/usr/share/nginx/html \
nginx
