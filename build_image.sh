#!/bin/bash

export DOCKER_NAME=${DOCKER_NAME:=${PWD##*/}}
export BUILD_NUMBER=${BUILD_NUMBER:=1}

# Pull the latest base
docker pull docker.psidox.com/base

docker kill builder 
docker rm builder 
docker run -t -v $(pwd):/fs --name builder docker.psidox.com/base /bin/bash /fs/build_container.sh
docker commit builder docker.psidox.com/$DOCKER_NAME:$BUILD_NUMBER
docker rm builder

docker tag docker.psidox.com/$DOCKER_NAME:$BUILD_NUMBER docker.psidox.com/$DOCKER_NAME:latest
