# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtlebot2i_arm_director: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iturtlebot2i_arm_director:/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtlebot2i_arm_director_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg" NAME_WE)
add_custom_target(_turtlebot2i_arm_director_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_arm_director" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg" NAME_WE)
add_custom_target(_turtlebot2i_arm_director_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_arm_director" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg" "turtlebot2i_arm_director/NamedPoseDirectorFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg" NAME_WE)
add_custom_target(_turtlebot2i_arm_director_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_arm_director" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:turtlebot2i_arm_director/NamedPoseDirectorGoal"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg" NAME_WE)
add_custom_target(_turtlebot2i_arm_director_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_arm_director" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg" NAME_WE)
add_custom_target(_turtlebot2i_arm_director_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_arm_director" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:turtlebot2i_arm_director/NamedPoseDirectorResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg" NAME_WE)
add_custom_target(_turtlebot2i_arm_director_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_arm_director" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg" ""
)

get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg" NAME_WE)
add_custom_target(_turtlebot2i_arm_director_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot2i_arm_director" "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg" "actionlib_msgs/GoalStatus:turtlebot2i_arm_director/NamedPoseDirectorFeedback:turtlebot2i_arm_director/NamedPoseDirectorResult:turtlebot2i_arm_director/NamedPoseDirectorActionFeedback:turtlebot2i_arm_director/NamedPoseDirectorGoal:std_msgs/Header:actionlib_msgs/GoalID:turtlebot2i_arm_director/NamedPoseDirectorActionResult:turtlebot2i_arm_director/NamedPoseDirectorActionGoal"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_cpp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_cpp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_cpp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_cpp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_cpp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_cpp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_arm_director
)

### Generating Services

### Generating Module File
_generate_module_cpp(turtlebot2i_arm_director
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_arm_director
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtlebot2i_arm_director_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtlebot2i_arm_director_generate_messages turtlebot2i_arm_director_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_cpp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_cpp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_cpp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_cpp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_cpp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_cpp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_cpp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot2i_arm_director_gencpp)
add_dependencies(turtlebot2i_arm_director_gencpp turtlebot2i_arm_director_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot2i_arm_director_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_eus(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_eus(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_eus(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_eus(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_eus(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_eus(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_arm_director
)

### Generating Services

### Generating Module File
_generate_module_eus(turtlebot2i_arm_director
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_arm_director
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turtlebot2i_arm_director_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turtlebot2i_arm_director_generate_messages turtlebot2i_arm_director_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_eus _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_eus _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_eus _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_eus _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_eus _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_eus _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_eus _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot2i_arm_director_geneus)
add_dependencies(turtlebot2i_arm_director_geneus turtlebot2i_arm_director_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot2i_arm_director_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_lisp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_lisp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_lisp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_lisp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_lisp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_lisp(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_arm_director
)

### Generating Services

### Generating Module File
_generate_module_lisp(turtlebot2i_arm_director
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_arm_director
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtlebot2i_arm_director_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtlebot2i_arm_director_generate_messages turtlebot2i_arm_director_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_lisp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_lisp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_lisp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_lisp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_lisp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_lisp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_lisp _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot2i_arm_director_genlisp)
add_dependencies(turtlebot2i_arm_director_genlisp turtlebot2i_arm_director_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot2i_arm_director_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_nodejs(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_nodejs(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_nodejs(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_nodejs(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_nodejs(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_nodejs(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_arm_director
)

### Generating Services

### Generating Module File
_generate_module_nodejs(turtlebot2i_arm_director
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_arm_director
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turtlebot2i_arm_director_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turtlebot2i_arm_director_generate_messages turtlebot2i_arm_director_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_nodejs _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_nodejs _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_nodejs _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_nodejs _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_nodejs _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_nodejs _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_nodejs _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot2i_arm_director_gennodejs)
add_dependencies(turtlebot2i_arm_director_gennodejs turtlebot2i_arm_director_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot2i_arm_director_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_py(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_py(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_py(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_py(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_py(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_arm_director
)
_generate_msg_py(turtlebot2i_arm_director
  "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg;/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_arm_director
)

### Generating Services

### Generating Module File
_generate_module_py(turtlebot2i_arm_director
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_arm_director
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtlebot2i_arm_director_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtlebot2i_arm_director_generate_messages turtlebot2i_arm_director_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorResult.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_py _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_py _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_py _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorFeedback.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_py _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorActionResult.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_py _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorGoal.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_py _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/turtlebot2i/devel/share/turtlebot2i_arm_director/msg/NamedPoseDirectorAction.msg" NAME_WE)
add_dependencies(turtlebot2i_arm_director_generate_messages_py _turtlebot2i_arm_director_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot2i_arm_director_genpy)
add_dependencies(turtlebot2i_arm_director_genpy turtlebot2i_arm_director_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot2i_arm_director_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_arm_director)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot2i_arm_director
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(turtlebot2i_arm_director_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_arm_director)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot2i_arm_director
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(turtlebot2i_arm_director_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_arm_director)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot2i_arm_director
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(turtlebot2i_arm_director_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_arm_director)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot2i_arm_director
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(turtlebot2i_arm_director_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_arm_director)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_arm_director\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot2i_arm_director
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(turtlebot2i_arm_director_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
