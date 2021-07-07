#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | sudo apt-key add -
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full

echo "source /opt/ros/kinetic/setup.bash\nsource ~/turtlebot2i/devel/setup.bash\nalias goros='source devel/setup.sh'\nexport ROS_MASTER_URI=http://192.168.1.10:11311\nexport ROS_HOSTNAME=192.168.1.10\nexport TURTLEBOT_3D_SENSOR=astra\nexport TURTLEBOT_3D_SENSOR2=sr300\nexport TURTLEBOT_BATTERY=None\nexport TURTLEBOT_STACKS=interbotix\nexport TURTLEBOT_ARM=pincher\n#export TURTLEBOT_BASE=kobuki\nexport ROS_IP=192.168.1.10" >> ~/.bashrc

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

git checkout turtlebot2i
cd ~/turtlebot2i
catkin_make

echo "192.168.1.5     supIP" >> /etc/hosts

