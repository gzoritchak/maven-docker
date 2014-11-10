#!/bin/bash

start_time=`date +%s`

docker build -t hello-mvn .

docker rm -f hello-compiled
docker run \
    --name hello-compiled \
    -v ~/.m2:/root/.m2 \
    hello-mvn install -DskipTests

docker rm -f hello-mvn
docker run -d \
    --name hello-mvn \
    -v ~/.m2:/root/.m2 \
    --volumes-from hello-compiled \
    -p 8080:8080 \
    hello-mvn exec:java -DskipTests

echo New container started in $(expr `date +%s` - $start_time) s

