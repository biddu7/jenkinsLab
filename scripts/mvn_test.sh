#!/bin/bash

echo "************************************************************"
echo "****************Testing the JAR (using Maven)***************"
echo "************************************************************"

REL_PATH=/home/jenkins/jenkins-data/jenkins_home/workspace/Automatic_CI_CD

docker run --rm -v $REL_PATH/javaApp:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.6.0 "$@"

