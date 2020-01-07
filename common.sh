#!/bin/bash
echo_and_run() {
    echo -e "\nExecuting >>> $@";
    "$@";
    echo -e "Executing <<<\n";
}

export CONTAINER_NAME="buster-container"
export CONTAINER_IMAGE="buster-img"
