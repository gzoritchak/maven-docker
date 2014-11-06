#!/bin/sh

# Run image

docker build -t hello-mvn .
docker rm -f hello-mvn
docker run  \
    --volumes-from maven-cache \
    --name hello-mvn \
    hello-mvn install -DskipTests