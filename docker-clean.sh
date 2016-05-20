#!/bin/bash

# Delete contianers that have exited
docker rm -v $(docker ps -a -q -f status=exited)

# Delete dangling images
docker rmi $(docker images -f "dangling=true" -q)

# Remove unwanted volumes
docker run -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/docker:/var/lib/docker --rm martin/docker-cleanup-volumes
