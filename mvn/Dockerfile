FROM java:8
MAINTAINER Gaetan Zoritchak

VOLUME /project
WORKDIR /project

RUN apt-get update
RUN apt-get install -y maven

ENTRYPOINT ["mvn"]