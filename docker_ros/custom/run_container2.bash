#!/bin/bash

CURR=$(pwd)/..
sudo docker run --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
--runtime nvidia --network=host --privileged \
-v /dev:/dev -v $CURR:/app -it \
--name zed_cnt zed_ros_noetic
