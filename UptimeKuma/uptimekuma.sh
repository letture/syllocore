#!/bin/bash
APP_HOME=/zscloud/cache/app/uptimekuma
mkdir -p $APP_HOME/app/data


docker run -d --restart=always -p 3001:3001 \
    -v $APP_HOME/app/data:/app/data \
    --name uptimekuma \
    registry.wh.gpuez.com/syllocore/louislam/uptime-kuma:1.20.2-alpine