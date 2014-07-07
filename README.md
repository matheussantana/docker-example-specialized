docker-example-specialized
==========================

My own personal docker strategy.  It employes a Dockerfile'less building technique discussed [here](http://www.psidox.com/building-docker-containers-without-a-dockerfile).

## Description
This is a specialized docker built off a base container. For the base container, see [docker-example-base](https://github.com/smysnk/docker-example-base).

## Usage 
    $ ./build_image.sh
    $ ./run.sh
    $ ssh root@localhost -p 2200  # Connect to running docker container

    (Open up web browser to http://localhost to view apache webserver running from docker container)

## Files
    build_image.sh - Docker image creation
    build_image_push.sh - Docker repository publication
    build_container.sh - Build script for the container
    run.sh - Docker image execution example