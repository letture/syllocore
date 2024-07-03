#!/bin/bash

APP_HOME=/zscloud/cache/app/healthchecks
mkdir -p $APP_HOME/data

docker run -d \
  --name=healthchecks \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e SITE_ROOT= \
  -e SITE_NAME= \
  -e DEFAULT_FROM_EMAIL= \
  -e EMAIL_HOST= \
  -e EMAIL_PORT= \
  -e EMAIL_HOST_USER= \
  -e EMAIL_HOST_PASSWORD= \
  -e EMAIL_USE_TLS= \
  -e SUPERUSER_EMAIL= \
  -e SUPERUSER_PASSWORD= \
  -e REGENERATE_SETTINGS= `#optional` \
  -e ALLOWED_HOSTS= `#optional` \
  -e APPRISE_ENABLED= `#optional` \
  -e DEBUG= `#optional` \
  -e INTEGRATIONS_ALLOW_PRIVATE_IPS= `#optional` \
  -e PING_EMAIL_DOMAIN= `#optional` \
  -e SECRET_KEY= `#optional` \
  -e SITE_LOGO_URL= `#optional` \
  -p 8000:8000 \
  -p 2525:2525 `#optional` \
  -v $APP_HOME/data:/config \
  --restart unless-stopped \
  registry.wh.gpuez.com/linuxserver/healthchecks:latest
