#!/bin/bash

source /opt/ros/kinetic/setup.bash
source ~/catkin2_ws/devel/setup.bash

sleep 10
bash /home/nvidia/projet_M2_2020/bash/bringup.bash&
bash /home/nvidia/projet_M2_2020/bash/navigation.bash&
bash /home/nvidia/projet_M2_2020/bash/moveSuperviseur.bash
