#!/bin/bash

APP_HOME=/zscloud/cache/app/2fauth
mkdir -p $APP_HOME
chown 1000:1000 $APP_HOME
chmod 700 $APP_HOME

docker run -idt --name 2fauth \
--restart unless-stopped \
-p 8002:8000/tcp \
--restart always \
-v $APP_HOME:/2fauth:rw 2fauth/2fauth