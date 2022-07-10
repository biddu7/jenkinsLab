#!/bin/bash

echo "************************************************************"
echo "****************BUILDING IMAGE (from the JAR)***************"
echo "************************************************************"

#Copy Maven build jar to build location (here, it is scripts/)
cp -f javaApp/target/*.jar scripts/

#Run Docker-Compose build command from docker-compose-build.yml file location
cd scripts/ && docker-compose -f docker-compose-build.yml build --no-cache 

