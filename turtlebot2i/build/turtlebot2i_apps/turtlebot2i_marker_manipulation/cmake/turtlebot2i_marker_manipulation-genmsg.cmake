# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtlebot2i_marker_manipulation: 16 messages, 0 services")

set(MSG_I_FLAGS "-Iturtlebot2i_marker_manipulation:/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg;-Iturtlebot2i_marker_manipulation:/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtlebot2i_marker_manipulation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg" "std_msgs/ColorRGBA:turtlebot2i_marker_manipulation/BlockPose:geometry_msgs/Pose:turtlebot2i_marker_manipulation/ToolDetectionResult:geometry_msgs/Quaternion:geometry_msgs/PoseArray:geometry_msgs/Point:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:turtlebot2i_marker_manipulation/BlockPoseArray:std_msgs/Header"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg" "geometry_msgs/Pose:std_msgs/Header:turtlebot2i_marker_manipulation/PickAndDrawGoal:geometry_msgs/Quaternion:turtlebot2i_marker_manipulation/PickAndDrawActionFeedback:geometry_msgs/Point:turtlebot2i_marker_manipulation/PickAndDrawResult:turtlebot2i_marker_manipulation/PickAndDrawActionResult:turtlebot2i_marker_manipulation/PickAndDrawActionGoal:turtlebot2i_marker_manipulation/PickAndDrawFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg" "turtlebot2i_marker_manipulation/PickAndDrawFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg" "geometry_msgs/Pose:std_msgs/Header:turtlebot2i_marker_manipulation/PickAndDrawGoal:geometry_msgs/Quaternion:geometry_msgs/Point:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg" "std_msgs/ColorRGBA:geometry_msgs/Quaternion:turtlebot2i_marker_manipulation/BlockPose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg" "std_msgs/ColorRGBA:turtlebot2i_marker_manipulation/BlockPose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseArray:geometry_msgs/Pose:turtlebot2i_marker_manipulation/BlockPoseArray"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg" "std_msgs/ColorRGBA:turtlebot2i_marker_manipulation/BlockPose:geometry_msgs/Pose:actionlib_msgs/GoalStatus:turtlebot2i_marker_manipulation/ToolDetectionActionFeedback:geometry_msgs/Quaternion:geometry_msgs/PoseArray:turtlebot2i_marker_manipulation/ToolDetectionResult:geometry_msgs/Point:turtlebot2i_marker_manipulation/ToolDetectionGoal:turtlebot2i_marker_manipulation/ToolDetectionFeedback:turtlebot2i_marker_manipulation/ToolDetectionActionGoal:actionlib_msgs/GoalID:turtlebot2i_marker_manipulation/ToolDetectionActionResult:turtlebot2i_marker_manipulation/BlockPoseArray:std_msgs/Header"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg" "turtlebot2i_marker_manipulation/ToolDetectionGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/ColorRGBA"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg" "turtlebot2i_marker_manipulation/ToolDetectionFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg" "turtlebot2i_marker_manipulation/PickAndDrawResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg" NAME_WE)
add_custom_target(_turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_marker_manipulation" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_cpp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)

### Generating Services

### Generating Module File
_generate_module_cpp(turtlebot2i_marker_manipulation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtlebot2i_marker_manipulation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages turtlebot2i_marker_manipulation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot2i_marker_manipulation_gencpp)
add_dependencies(turtlebot2i_marker_manipulation_gencpp turtlebot2i_marker_manipulation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot2i_marker_manipulation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_eus(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
)

### Generating Services

### Generating Module File
_generate_module_eus(turtlebot2i_marker_manipulation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turtlebot2i_marker_manipulation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages turtlebot2i_marker_manipulation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot2i_marker_manipulation_geneus)
add_dependencies(turtlebot2i_marker_manipulation_geneus turtlebot2i_marker_manipulation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot2i_marker_manipulation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_lisp(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
)

### Generating Services

### Generating Module File
_generate_module_lisp(turtlebot2i_marker_manipulation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtlebot2i_marker_manipulation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages turtlebot2i_marker_manipulation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot2i_marker_manipulation_genlisp)
add_dependencies(turtlebot2i_marker_manipulation_genlisp turtlebot2i_marker_manipulation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot2i_marker_manipulation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_nodejs(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
)

### Generating Services

### Generating Module File
_generate_module_nodejs(turtlebot2i_marker_manipulation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turtlebot2i_marker_manipulation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages turtlebot2i_marker_manipulation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot2i_marker_manipulation_gennodejs)
add_dependencies(turtlebot2i_marker_manipulation_gennodejs turtlebot2i_marker_manipulation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot2i_marker_manipulation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)
_generate_msg_py(turtlebot2i_marker_manipulation
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
)

### Generating Services

### Generating Module File
_generate_module_py(turtlebot2i_marker_manipulation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtlebot2i_marker_manipulation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages turtlebot2i_marker_manipulation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawAction.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPoseArray.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionAction.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/src/turtlebot2i_apps/turtlebot2i_marker_manipulation/msg/BlockPose.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/PickAndDrawActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_marker_manipulation/msg/ToolDetectionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py _turtlebot2i_marker_manipulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot2i_marker_manipulation_genpy)
add_dependencies(turtlebot2i_marker_manipulation_genpy turtlebot2i_marker_manipulation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot2i_marker_manipulation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_marker_manipulation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(turtlebot2i_marker_manipulation_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_marker_manipulation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(turtlebot2i_marker_manipulation_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_marker_manipulation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(turtlebot2i_marker_manipulation_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_marker_manipulation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(turtlebot2i_marker_manipulation_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_marker_manipulation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(turtlebot2i_marker_manipulation_generate_messages_py geometry_msgs_generate_messages_py)
endif()
