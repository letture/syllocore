#!/bin/bash
APP_HOME=/zscloud/cache/app/photoprism
mkdir -p $APP_HOME/pictures

docker run -d \
  --name photoprism \
  --security-opt seccomp=unconfined \
  --security-opt apparmor=unconfined \
  -p 2342:2342 \
  -e PHOTOPRISM_UPLOAD_NSFW="true" \
  -e PHOTOPRISM_ADMIN_PASSWORD="zscloud@2023" \
  --restart always \
  -v /photoprism/storage \
  -v $APP_HOME/pictures:/photoprism/originals \
  docker.aukoo.cn/photoprism:latest
