FROM java:8
MAINTAINER Gaetan Zoritchak

# Install prerequisites
RUN apt-get update

# Install MAVEN
RUN apt-get install -y maven

ADD . /project
WORKDIR /project


# Build project
run mvn install -DskipTests

# Expose the http port
expose 8080

# Launch server on start
CMD mvn exec:java
