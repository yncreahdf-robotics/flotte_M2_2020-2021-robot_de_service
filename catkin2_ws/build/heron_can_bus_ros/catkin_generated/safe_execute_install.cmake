execute_process(COMMAND "/home/nvidia/catkin2_ws/build/heron_can_bus_ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/nvidia/catkin2_ws/build/heron_can_bus_ros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
