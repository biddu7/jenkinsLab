#!/bin/bash

echo "************************************************************"
echo "****************Testing the JAR (using Maven)***************"
echo "************************************************************"


docker run --rm -v $PWD/javaApp:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.6.0 "$@"

