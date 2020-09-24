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

echo_and_run cd "/root/workspace/catkin_ws/src/heron_software"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/root/workspace/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/root/workspace/catkin_ws/install/lib/python2.7/dist-packages:/root/workspace/catkin_ws/build/heron/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/root/workspace/catkin_ws/build/heron" \
    "/usr/bin/python2" \
    "/root/workspace/catkin_ws/src/heron_software/setup.py" \
    build --build-base "/root/workspace/catkin_ws/build/heron" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/root/workspace/catkin_ws/install" --install-scripts="/root/workspace/catkin_ws/install/bin"
