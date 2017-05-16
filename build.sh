#!/bin/bash

INSTANCE_RUNNING=`sudo docker ps --filter="ancestor=jeanbaptisteLedig/ProjetDockerHub" | wc -l`

# Build docker image
docker build -t jeanbaptisteLedig/ProjetDockerHub .

# Stop current instance if exists
if [ $INSTANCE_RUNNING -gt 1 ] ; then
    printf "Stopping jeanbaptisteLedig/ProjetDockerHub"
    docker stop prod-devops
    docker rm prod-devops
fi

docker run --name prod-devops -p 80:80 -d jeanbaptisteLedig/ProjetDockerHub