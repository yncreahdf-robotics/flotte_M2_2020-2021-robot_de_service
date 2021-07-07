#!/bin/bash

source /opt/ros/kinetic/setup.bash
source ~/turtlebot2i/devel/setup.bash

sleep 15
bash /home/turtlebot/projet_M2_2020/bash/minimal.bash&
bash /home/turtlebot/projet_M2_2020/bash/map_complete.bash&
bash /home/turtlebot/projet_M2_2020/bash/moveSuperviseur.bash
