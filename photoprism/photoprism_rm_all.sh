#!/bin/bash
APP_HOME=/zscloud/cache/app/photoprism
rm -rf $APP_HOME
docker stop photoprism
docker rm photoprism