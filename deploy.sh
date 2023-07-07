#!/bin/bash
result=$( sudo docker images -q my-app:latest )
docker run -itd --name pro-container -p 3001:80 $result
CONTAINER_NAME='pro-container'
x=$(docker ps -q -f status=running -f name=$pro-container)
if [[ -n "$x" ]]; then
  echo 'Container exists'
else
  echo 'No container image'
fi
