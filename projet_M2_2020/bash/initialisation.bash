#!/bin/bash

source /opt/ros/kinetic/setup.bash
source ~/catkin_ws/devel/setup.bash

sleep 10
bash /home/robotino/projet_M2_2020/bash/launch.bash&
bash /home/robotino/projet_M2_2020/bash/map_complete.bash&
bash /home/robotino/projet_M2_2020/bash/moveSuperviseur.bash
