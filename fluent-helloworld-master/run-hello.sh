#!/bin/sh

docker rm -f helloworld

docker run -d \
    --name helloworld \
    --volumes-from hello-mvn \
    --volumes-from maven-cache \
    -p 8080:8080 \
    hello-mvn exec:java