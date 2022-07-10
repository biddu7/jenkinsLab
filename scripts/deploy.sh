#!/bin/bash

echo japp > /tmp/.auth
echo $BUILD_NUMBER >> /tmp/.auth
echo $PASS >> /tmp/.auth

REL_PATH=/home/jenkins/jenkins-data/jenkins_home/workspace/Automatic_CI_CD

#Copying param-value file (.auth) to target VM
scp -i /opt/prod /tmp/.auth jenkins@192.168.29.222:/tmp/.auth

#Copying docker-compose.yml file to target VM japp folder
scp -i /opt/prod $REL_PATH/scripts/rvm/docker-compose.yml jenkins@192.168.29.222:/tmp/docker-compose.yml

#Copying Publish file to target VM japp folder
scp -i /opt/prod $REL_PATH/scripts/rvm/publish jenkins@192.168.29.222:/tmp/publish

#Run Publish file to pull IMAGE from DockerHub to new VM
ssh -i /opt/prod jenkins@192.168.29.222 "/tmp/publish"


