FROM stereolabs/zed:3.8-py-devel-l4t-r35.1

RUN apt update
RUN apt install -y nano net-tools curl

#Ros install
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
RUN apt update
RUN apt install -y ros-noetic-desktop-full
RUN apt install -y python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
RUN apt install -y python3-rosdep
RUN rosdep init
RUN rosdep update
WORKDIR /app
ADD ros_entrypoint.sh ros_entrypoint.sh
ENTRYPOINT ["ros_entrypoint.sh"]
CMD ["/bin/bash"]


