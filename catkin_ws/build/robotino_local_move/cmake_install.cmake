# Install script for directory: /home/robotino/catkin_ws/src/robotino_local_move

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/robotino/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_local_move/action" TYPE FILE FILES "/home/robotino/catkin_ws/src/robotino_local_move/action/LocalMove.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_local_move/msg" TYPE FILE FILES
    "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg"
    "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg"
    "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg"
    "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg"
    "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg"
    "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg"
    "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_local_move/cmake" TYPE FILE FILES "/home/robotino/catkin_ws/build/robotino_local_move/catkin_generated/installspace/robotino_local_move-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/robotino/catkin_ws/devel/include/robotino_local_move")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/robotino/catkin_ws/devel/share/roseus/ros/robotino_local_move")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/robotino/catkin_ws/devel/share/common-lisp/ros/robotino_local_move")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/robotino/catkin_ws/devel/share/gennodejs/ros/robotino_local_move")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/robotino/catkin_ws/devel/lib/python2.7/dist-packages/robotino_local_move")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/robotino/catkin_ws/devel/lib/python2.7/dist-packages/robotino_local_move")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robotino/catkin_ws/build/robotino_local_move/catkin_generated/installspace/robotino_local_move.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_local_move/cmake" TYPE FILE FILES "/home/robotino/catkin_ws/build/robotino_local_move/catkin_generated/installspace/robotino_local_move-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_local_move/cmake" TYPE FILE FILES
    "/home/robotino/catkin_ws/build/robotino_local_move/catkin_generated/installspace/robotino_local_moveConfig.cmake"
    "/home/robotino/catkin_ws/build/robotino_local_move/catkin_generated/installspace/robotino_local_moveConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_local_move" TYPE FILE FILES "/home/robotino/catkin_ws/src/robotino_local_move/package.xml")
endif()

