#!/bin/bash

CURR=$(pwd)/..
sudo docker run --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
--runtime nvidia --network=host --privileged \
-v /dev:/dev -v $CURR:/root/share -it \
--name zed_cnt stereolabs/zed:3.8-py-runtime-l4t-r35.1
