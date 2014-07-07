#!/bin/bash

export DOCKER_NAME=${DOCKER_NAME:=${PWD##*/}}
export BUILD_NUMBER=${BUILD_NUMBER:=1}

docker run -t -d -p 2200:22 -p 80:80 docker.psidox.com/$DOCKER_NAME ./bootstrap.sh