#!/bin/bash

sudo apt install robotino-api2
sudo apt install robotino_daemons

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | sudo apt-key add -
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full

echo "source /opt/ros/kinetic/setup.bash\nsource ~/catkin_ws/devel/setup.bash\nalias cm=\"cd ~/catkin_ws && catkin_make\"\n\nalias cb=\"cd ~/catkin_ws && catkin build\"\nalias cc=\"cd ~/catkin_ws && catkin clean -bdy\"\nalias cw=\"cd ~/catkin_ws\"\nalias cs=\"cd ~/catkin_ws/src\"\nexport ROS_IP=192.168.1.103\nROS_MASTER_URI=http://192.168.1.103:11311\nROS_HOSTNAME=192.168.1.103" >> ~/.bashrc

source ~/.bashrc

sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt install python-rosdep
sudo rosdep init
rosdep update
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_make
cd ~/catkin_ws/src

git clone https://github.com/yncreahdf-robotics/flotte_M2_2020-2021-robot_de_service.git

git checkout robotino
cd ~/robotino
catkin_make

echo "192.168.1.5     supIP" >> /etc/hosts

