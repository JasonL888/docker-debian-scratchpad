#!/bin/bash
source ./common.sh

echo_and_run docker build -t $CONTAINER_IMAGE .

CONTAINER_ID=`docker ps -qf name=$CONTAINER_NAME`
if [ -z $CONTAINER_ID ] 
then
    echo "Checking ... Prior container does not exists, will spawn new"
else
    echo "Checking ... Prior container exist, will stop and rm"
    echo_and_run docker stop $CONTAINER_NAME
    echo_and_run docker rm $CONTAINER_NAME
fi
echo_and_run docker run -dit --name $CONTAINER_NAME $CONTAINER_IMAGE bash

echo -e "\nTo attach container, ./attach.sh"
