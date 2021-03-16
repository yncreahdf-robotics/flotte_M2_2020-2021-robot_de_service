# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotino_local_move: 7 messages, 0 services")

set(MSG_I_FLAGS "-Irobotino_local_move:/home/robotino/catkin_ws/devel/share/robotino_local_move/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotino_local_move_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg" NAME_WE)
add_custom_target(_robotino_local_move_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_local_move" "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg" "robotino_local_move/LocalMoveResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg" NAME_WE)
add_custom_target(_robotino_local_move_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_local_move" "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg" ""
)

get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg" NAME_WE)
add_custom_target(_robotino_local_move_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_local_move" "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg" "actionlib_msgs/GoalStatus:robotino_local_move/LocalMoveFeedback:robotino_local_move/LocalMoveActionGoal:robotino_local_move/LocalMoveResult:robotino_local_move/LocalMoveActionResult:robotino_local_move/LocalMoveActionFeedback:actionlib_msgs/GoalID:robotino_local_move/LocalMoveGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg" NAME_WE)
add_custom_target(_robotino_local_move_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_local_move" "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg" ""
)

get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg" NAME_WE)
add_custom_target(_robotino_local_move_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_local_move" "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg" ""
)

get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg" NAME_WE)
add_custom_target(_robotino_local_move_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_local_move" "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:robotino_local_move/LocalMoveGoal"
)

get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg" NAME_WE)
add_custom_target(_robotino_local_move_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_local_move" "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:robotino_local_move/LocalMoveFeedback:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_cpp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_cpp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_cpp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_cpp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_cpp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_cpp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_local_move
)

### Generating Services

### Generating Module File
_generate_module_cpp(robotino_local_move
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_local_move
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotino_local_move_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotino_local_move_generate_messages robotino_local_move_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_cpp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_cpp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_cpp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_cpp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_cpp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_cpp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_cpp _robotino_local_move_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_local_move_gencpp)
add_dependencies(robotino_local_move_gencpp robotino_local_move_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_local_move_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_local_move
)
_generate_msg_eus(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_local_move
)
_generate_msg_eus(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_local_move
)
_generate_msg_eus(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_local_move
)
_generate_msg_eus(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_local_move
)
_generate_msg_eus(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_local_move
)
_generate_msg_eus(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_local_move
)

### Generating Services

### Generating Module File
_generate_module_eus(robotino_local_move
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_local_move
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robotino_local_move_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robotino_local_move_generate_messages robotino_local_move_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_eus _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_eus _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_eus _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_eus _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_eus _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_eus _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_eus _robotino_local_move_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_local_move_geneus)
add_dependencies(robotino_local_move_geneus robotino_local_move_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_local_move_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_lisp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_lisp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_lisp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_lisp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_lisp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_local_move
)
_generate_msg_lisp(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_local_move
)

### Generating Services

### Generating Module File
_generate_module_lisp(robotino_local_move
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_local_move
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotino_local_move_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotino_local_move_generate_messages robotino_local_move_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_lisp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_lisp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_lisp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_lisp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_lisp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_lisp _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_lisp _robotino_local_move_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_local_move_genlisp)
add_dependencies(robotino_local_move_genlisp robotino_local_move_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_local_move_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_local_move
)
_generate_msg_nodejs(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_local_move
)
_generate_msg_nodejs(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_local_move
)
_generate_msg_nodejs(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_local_move
)
_generate_msg_nodejs(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_local_move
)
_generate_msg_nodejs(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_local_move
)
_generate_msg_nodejs(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_local_move
)

### Generating Services

### Generating Module File
_generate_module_nodejs(robotino_local_move
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_local_move
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robotino_local_move_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robotino_local_move_generate_messages robotino_local_move_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_nodejs _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_nodejs _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_nodejs _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_nodejs _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_nodejs _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_nodejs _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_nodejs _robotino_local_move_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_local_move_gennodejs)
add_dependencies(robotino_local_move_gennodejs robotino_local_move_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_local_move_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_local_move
)
_generate_msg_py(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_local_move
)
_generate_msg_py(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_local_move
)
_generate_msg_py(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_local_move
)
_generate_msg_py(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_local_move
)
_generate_msg_py(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_local_move
)
_generate_msg_py(robotino_local_move
  "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_local_move
)

### Generating Services

### Generating Module File
_generate_module_py(robotino_local_move
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_local_move
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotino_local_move_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotino_local_move_generate_messages robotino_local_move_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionResult.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_py _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveGoal.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_py _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveAction.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_py _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveFeedback.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_py _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveResult.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_py _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionGoal.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_py _robotino_local_move_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotino/catkin_ws/devel/share/robotino_local_move/msg/LocalMoveActionFeedback.msg" NAME_WE)
add_dependencies(robotino_local_move_generate_messages_py _robotino_local_move_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_local_move_genpy)
add_dependencies(robotino_local_move_genpy robotino_local_move_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_local_move_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_local_move)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_local_move
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robotino_local_move_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_local_move)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_local_move
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robotino_local_move_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_local_move)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_local_move
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robotino_local_move_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_local_move)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_local_move
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robotino_local_move_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_local_move)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_local_move\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_local_move
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robotino_local_move_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
