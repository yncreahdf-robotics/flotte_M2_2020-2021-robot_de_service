
#!/bin/bash


source /opt/ros/kinetic/setup.bash
source /home/robotino/catkin_ws/devel/setup.bash
roslaunch robotino_node robotino_node.launch hostname:=127.0.1.1&
sleep 3
roslaunch robotino_navigation navigation.launch map_file:=/home/robotino/map_complete.yaml&
sleep 3
rosrun robotino_isen distanceSensors
sleep 3

#roslaunch superviseur localization.launch&
#sleep 3
#rosrun superviseur initLocalization.py&
#sleep 3
