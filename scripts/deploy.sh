#!/bin/bash

echo japp > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

#Copying param-value file (.auth) to target VM
scp -i /opt/prod /tmp/.auth jenkins@192.168.29.222:/tmp/.auth

#Copying docker-compose.yml file to target VM japp folder
scp -i /opt/prod $PWD/scripts/rvm/docker-compose.yml jenkins@192.168.29.222:/tmp/docker-compose.yml

#Copying Publish file to target VM japp folder
scp -i /opt/prod $PWD/scripts/rvm/publish jenkins@192.168.29.222:/tmp/publish

#Run Publish file to pull IMAGE from DockerHub to new VM
ssh -i /opt/prod jenkins@192.168.29.222 "/tmp/publish"


