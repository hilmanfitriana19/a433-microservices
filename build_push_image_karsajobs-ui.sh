#!/bin/bash

# build docker image
docker build -t karsajobs-ui .

# listing docker image
docker images

#push to docker hub
echo $PASSWORD_DOCKER_HUB docker login --username hlmnftr19 --password-stdin
docker tag karsajobs-ui hlmnftr19/karsajobs-ui
docker push hlmnftr19/karsajobs-ui