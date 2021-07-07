#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/turtlebot/turtlebot2i/src/arbotix_ros/arbotix_python"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/turtlebot/turtlebot2i/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/turtlebot/turtlebot2i/install/lib/python2.7/dist-packages:/home/turtlebot/turtlebot2i/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/turtlebot/turtlebot2i/build" \
    "/usr/bin/python2" \
    "/home/turtlebot/turtlebot2i/src/arbotix_ros/arbotix_python/setup.py" \
    build --build-base "/home/turtlebot/turtlebot2i/build/arbotix_ros/arbotix_python" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/turtlebot/turtlebot2i/install" --install-scripts="/home/turtlebot/turtlebot2i/install/bin"
