docker-example-specialized
==========================

My own personal docker strategy.  It employes a Dockerfile'less building technique discussed [here](http://www.psidox.com/building-docker-containers-without-a-dockerfile).

## Description
This is a specialized docker built off a base container. For the base container, see [docker-example-base](https://github.com/smysnk/docker-example-base).

## Usage 
$ ./build_docker.sh

## Files
build.sh - Build script for the container script
build_docker.sh - Docker image creation script
build_push.sh - Docker repository publication script