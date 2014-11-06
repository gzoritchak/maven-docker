#!/bin/bash


start_time=`date +%s`

# Build new image
echo "build image"
docker build -t helloworld .

docker rm -f helloworld

docker run -d \
   --name helloworld \
   -p 8080:8080 \
   helloworld

echo New container deployed in $(expr `date +%s` - $start_time) s
