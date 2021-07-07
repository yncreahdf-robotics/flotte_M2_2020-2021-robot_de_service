# Install script for directory: /home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_block_manipulation

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_block_manipulation/msg" TYPE FILE FILES
    "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_block_manipulation/msg/BlockPose.msg"
    "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_block_manipulation/msg/BlockPoseArray.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_block_manipulation/action" TYPE FILE FILES
    "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_block_manipulation/action/BlockDetection.action"
    "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_block_manipulation/action/InteractiveBlockManipulation.action"
    "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_block_manipulation/action/PickAndPlace.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_block_manipulation/msg" TYPE FILE FILES
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/BlockDetectionAction.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/BlockDetectionActionGoal.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/BlockDetectionActionResult.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/BlockDetectionActionFeedback.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/BlockDetectionGoal.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/BlockDetectionResult.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/BlockDetectionFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_block_manipulation/msg" TYPE FILE FILES
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/InteractiveBlockManipulationAction.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/InteractiveBlockManipulationActionGoal.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/InteractiveBlockManipulationActionResult.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/InteractiveBlockManipulationActionFeedback.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/InteractiveBlockManipulationGoal.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/InteractiveBlockManipulationResult.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/InteractiveBlockManipulationFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_block_manipulation/msg" TYPE FILE FILES
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/PickAndPlaceAction.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/PickAndPlaceActionGoal.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/PickAndPlaceActionResult.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/PickAndPlaceActionFeedback.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/PickAndPlaceGoal.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/PickAndPlaceResult.msg"
    "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_block_manipulation/msg/PickAndPlaceFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_block_manipulation/cmake" TYPE FILE FILES "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_block_manipulation/catkin_generated/installspace/turtlebot2i_block_manipulation-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/devel/include/turtlebot2i_block_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/devel/share/roseus/ros/turtlebot2i_block_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/devel/share/common-lisp/ros/turtlebot2i_block_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/devel/share/gennodejs/ros/turtlebot2i_block_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/turtlebot/turtlebot2i/devel/lib/python2.7/dist-packages/turtlebot2i_block_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/devel/lib/python2.7/dist-packages/turtlebot2i_block_manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_block_manipulation/catkin_generated/installspace/turtlebot2i_block_manipulation.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_block_manipulation/cmake" TYPE FILE FILES "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_block_manipulation/catkin_generated/installspace/turtlebot2i_block_manipulation-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_block_manipulation/cmake" TYPE FILE FILES
    "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_block_manipulation/catkin_generated/installspace/turtlebot2i_block_manipulationConfig.cmake"
    "/home/turtlebot/turtlebot2i/build/turtlebot2i_apps/turtlebot2i_block_manipulation/catkin_generated/installspace/turtlebot2i_block_manipulationConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_block_manipulation" TYPE FILE FILES "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_block_manipulation/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_detection_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_detection_action_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_detection_action_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation" TYPE EXECUTABLE FILES "/home/turtlebot/turtlebot2i/devel/lib/turtlebot2i_block_manipulation/block_detection_action_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_detection_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_detection_action_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_detection_action_server"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi/lib:/usr/lib/openmpi/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_detection_action_server")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/interactive_manipulation_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/interactive_manipulation_action_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/interactive_manipulation_action_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation" TYPE EXECUTABLE FILES "/home/turtlebot/turtlebot2i/devel/lib/turtlebot2i_block_manipulation/interactive_manipulation_action_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/interactive_manipulation_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/interactive_manipulation_action_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/interactive_manipulation_action_server"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi/lib:/usr/lib/openmpi/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/interactive_manipulation_action_server")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/pick_and_place_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/pick_and_place_action_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/pick_and_place_action_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation" TYPE EXECUTABLE FILES "/home/turtlebot/turtlebot2i/devel/lib/turtlebot2i_block_manipulation/pick_and_place_action_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/pick_and_place_action_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/pick_and_place_action_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/pick_and_place_action_server"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi/lib:/usr/lib/openmpi/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/pick_and_place_action_server")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_manipulation_demo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_manipulation_demo")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_manipulation_demo"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation" TYPE EXECUTABLE FILES "/home/turtlebot/turtlebot2i/devel/lib/turtlebot2i_block_manipulation/block_manipulation_demo")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_manipulation_demo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_manipulation_demo")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_manipulation_demo"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot2i_block_manipulation/block_manipulation_demo")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_block_manipulation" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_block_manipulation/demo")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot2i_block_manipulation" TYPE DIRECTORY FILES "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_block_manipulation/launch")
endif()

