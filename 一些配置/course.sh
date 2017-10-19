#!/bin/sh
cd /Users/keeley/Documents/zxy/code/zxy-system/course-study

if [ -n "$1" ] && [ $1 = "mvn" ];then
    mvn -DskipTests package
elif [ -n "$1" ] && [ $1 = "service" ];then
    java -jar course-study-service/target/course-study-service-0.0.1-SNAPSHOT.jar
elif [ -n "$1" ] && [ $1 = "web" ];then
    java -jar course-study-web-server/target/course-study-web-server-0.0.1-SNAPSHOT.jar
elif [ -n "$1" ] && [ $1 = "asyn" ];then
    java -jar course-study-async-service/target/course-study-async-service-0.0.1-SNAPSHOT.jar
else
    echo "no params ,mvn, service ,web, or asyn"
fi