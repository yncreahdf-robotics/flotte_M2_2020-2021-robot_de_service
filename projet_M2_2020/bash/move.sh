#!/bin/bash

echo "launching launch file"

source /opt/ros/kinetic/setup.bash
source /home/robotino/catkin_ws/devel/setup.bash
rosrun superviseur moveToGoal.py
