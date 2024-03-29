#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' \
&& sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 \
&& sudo apt-get update \
&& sudo apt upgrade -y \
&& sudo apt autoremove -y \
&& sudo apt-get install -y ros-kinetic-desktop-full \
&& sudo rosdep init \
&& rosdep update \
&& echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc \
&& echo "All done! Rebooting your machine for changes to take effect!" \
&& sudo reboot