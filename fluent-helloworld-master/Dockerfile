FROM java:8
MAINTAINER Gaetan Zoritchak

RUN apt-get update
RUN apt-get install -y maven

ADD . /project
WORKDIR /project

run mvn install -DskipTests

expose 8080

CMD mvn exec:java
