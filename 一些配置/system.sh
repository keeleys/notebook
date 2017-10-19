#!/bin/sh
cd /Users/keeley/Documents/zxy/code/zxy-system/system
if [ -n "$1" ] && [ $1 = "mvn" ];then
    mvn package
fi
java -jar system-service/target/system-service-0.0.1-SNAPSHOT.jar