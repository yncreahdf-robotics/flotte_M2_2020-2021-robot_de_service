execute_process(COMMAND "/root/workspace/catkin_ws/build/heron/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/root/workspace/catkin_ws/build/heron/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
