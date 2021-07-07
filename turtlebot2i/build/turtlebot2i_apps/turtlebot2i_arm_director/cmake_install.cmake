# Install script for directory: /home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_arm_director

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/turtlebot/turtlebot2i/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_arm_director/action" TYPE FILE FILES "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_arm_director/action/NamedPoseDirector.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_arm_director/msg" TYPE FILE FILES
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_arm_director/cmake" TYPE FILE FILES "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_arm_director/catkin_generated/installspace/turtlebot2i_arm_director-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/devel/include/turtlebot2i_arm_director")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/devel/share/roseus/ros/turtlebot2i_arm_director")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/devel/share/common-lisp/ros/turtlebot2i_arm_director")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/devel/share/gennodejs/ros/turtlebot2i_arm_director")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/turtlebot/turtlebot2i/devel/lib/python2.7/dist-packages/turtlebot2i_arm_director")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/devel/lib/python2.7/dist-packages/turtlebot2i_arm_director")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_arm_director/catkin_generated/installspace/turtlebot2i_arm_director.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_arm_director/cmake" TYPE FILE FILES "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_arm_director/catkin_generated/installspace/turtlebot2i_arm_director-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_arm_director/cmake" TYPE FILE FILES
    "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_arm_director/catkin_generated/installspace/turtlebot2i_arm_directorConfig.cmake"
    "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_arm_director/catkin_generated/installspace/turtlebot2i_arm_directorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_arm_director" TYPE FILE FILES "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_arm_director/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_arm_director/catkin_generated/installspace/turtlebot2i_arm_director.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_arm_director/cmake" TYPE FILE FILES "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_arm_director/catkin_generated/installspace/turtlebot2i_arm_director-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_arm_director/cmake" TYPE FILE FILES
    "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_arm_director/catkin_generated/installspace/turtlebot2i_arm_directorConfig.cmake"
    "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_arm_director/catkin_generated/installspace/turtlebot2i_arm_directorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_arm_director" TYPE FILE FILES "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_arm_director/package.xml")
endif()

