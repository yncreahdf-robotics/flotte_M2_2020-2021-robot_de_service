#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"


#install rosdep
#sudo apt install python-rosdep
#sudo rosdep init
#rosdep update
#install catkin
#sudo apt-get install ros-kinetic-catkin

# setup workspace if it exists
if [ -n "$WORKSPACE_NAME" ]; then 
    if [ ! -e "/root/$WORKSPACE_NAME/catkin_ws/devel/setup.sh" ]; then
        previousDirectory=$(pwd)
        cd /root/$WORKSPACE_NAME
        mkdir /root/$WORKSPACE_NAME/catkin_ws/src
        cd /root/$WORKSPACE_NAME/catkin_ws/
        catkin_make
        cd $previousDirectory
    fi
    source "/root/$WORKSPACE_NAME/catkin_ws/devel/setup.sh"
fi

exec "$@"
