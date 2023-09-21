#!/bin/bash
GITLAB_HOME=/srv/gitlab
APP_HOME=/zscloud/cache/app/gitlab
mkdir -p $APP_HOME/data
mkdir -p $APP_HOME/logs
mkdir -p $APP_HOME/etc

docker run --detach \
  --publish 7443:443 --publish 8088:80 --publish 3022:22 \
  --name gitlab \
  -e GITLAB_ROOT_PASSWORD="zscloud@2023" \
  --restart always \
  -v $APP_HOME/etc:$GITLAB_HOME/config \
  -v $APP_HOME/logs:$GITLAB_HOME/logs \
  -v $APP_HOME/data:$GITLAB_HOME/data \
  --shm-size 256m \
  docker.aukoo.cn/gitlab-ee:latest