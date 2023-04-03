#!/bin/bash

CURR=$(pwd)/..
sudo docker run --rm --runtime nvidia --network=host --privileged -v /dev:/dev -v $CURR:/app -it --name zed_cnt stereolabs/zed:3.8-py-runtime-l4t-r35.1
