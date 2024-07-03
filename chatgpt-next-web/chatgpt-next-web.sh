#!/bin/bash

docker run --name chatgptnextweb\
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Shanghai \
    -e BASE_URL=https://api.openai.com \
    -p 3004:3000 \
    --restart unless-stopped \
    -d registry.wh.gpuez.com/syllocore/yidadaa/chatgpt-next-web