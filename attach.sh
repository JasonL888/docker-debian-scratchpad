#!/bin/bash
source ./common.sh

echo_and_run docker exec -ti $CONTAINER_NAME bash
