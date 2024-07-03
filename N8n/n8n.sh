#!/bin/bash

APP_HOME=/zscloud/cache/app/n8n
mkdir -p $APP_HOME/.n8n

docker run --name n8n \
    -e TZ=Asia/Shanghai \
    -p 5678:5678 \
    -v $APP_HOME/.n8n:/home/node/.n8n \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/syllocore/n8nio/n8n:0.232.0