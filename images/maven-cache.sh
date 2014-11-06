#!/bin/sh

docker run  \
        -v $PWD/.m2:/root/.m2 \
        --name maven-cache \
        busybox