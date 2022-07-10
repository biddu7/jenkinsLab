#!/bin/bash

echo "************************************************************"
echo "****************PUSH IMAGE to DOCKER HUB Repo***************"
echo "************************************************************"

#Login to Docker Hub account
docker login -u joy2022 -p $PASS

#Tagging IMAGE before push
docker tag $IMAGE:$BUILD_TAG joy2022/$IMAGE:$BUILD_TAG

#Pushing the image to docker hub repo
docker push joy2022/$IMAGE:$BUILD_TAG

