#!/bin/bash
source ./common.sh

CONTAINER_ID=`docker ps -qf name=$CONTAINER_NAME`
if [ -z $CONTAINER_ID ] 
then
    echo "container does not exists, skip"
else
    echo "container exist, will stop and rm"
    echo_and_run docker stop $CONTAINER_NAME
    echo_and_run docker rm $CONTAINER_NAME
fi

IMAGE_ID=`docker images -q $CONTAINER_IMAGE`
if [ -z $IMAGE_ID ]
then
    echo "image does not exist, skip"
else
    echo "image exists, will rmi"
    echo_and_run docker rmi $CONTAINER_IMAGE 
fi
