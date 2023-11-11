#!/bin/bash

# build docker image
docker build -t item-app:v1 .

# listing docker image
docker images

#push to docker hub
echo $PASSWORD_DOCKER_HUB docker login --username hlmnftr19 --password-stdin
docker tag item-app:v1 hlmnftr19/item-app:v1
docker push hlmnftr19/item-app:v1