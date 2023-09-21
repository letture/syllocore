#!/bin/bash

APP_HOME=/zscloud/cache/app/gitlab
rm -rf $APP_HOME
docker stop gitlab
docker rm gitlab