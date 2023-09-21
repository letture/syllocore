#!/bin/bash
APP_HOME=/zscloud/cache/app/filebrowser

rm -rf $APP_HOME
docker stop filebrowser
docker rm filebrowser