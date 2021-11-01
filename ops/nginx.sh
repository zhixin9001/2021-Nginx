#!/bin/bash

docker run --name nginx-demo -d \
-p 80:80 \
nginx
