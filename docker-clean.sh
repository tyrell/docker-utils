#!/bin/bash

# Delete containers that have exited
docker rm -v $(docker ps -a -q -f status=exited)

# Delete dangling images
docker rmi $(docker images -f "dangling=true" -q)
