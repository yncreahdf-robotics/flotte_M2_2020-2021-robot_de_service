# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "heron_isen: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iheron_isen:/home/nvidia/catkin2_ws/src/heron_isen/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(heron_isen_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg" NAME_WE)
add_custom_target(_heron_isen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "heron_isen" "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg" ""
)

get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg" NAME_WE)
add_custom_target(_heron_isen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "heron_isen" "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg" "heron_isen/ValueUnitFloat:heron_isen/ValueUnitInt"
)

get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg" NAME_WE)
add_custom_target(_heron_isen_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "heron_isen" "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron_isen
)
_generate_msg_cpp(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg;/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron_isen
)
_generate_msg_cpp(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron_isen
)

### Generating Services

### Generating Module File
_generate_module_cpp(heron_isen
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron_isen
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(heron_isen_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(heron_isen_generate_messages heron_isen_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_cpp _heron_isen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_cpp _heron_isen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_cpp _heron_isen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heron_isen_gencpp)
add_dependencies(heron_isen_gencpp heron_isen_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heron_isen_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron_isen
)
_generate_msg_eus(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg;/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron_isen
)
_generate_msg_eus(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron_isen
)

### Generating Services

### Generating Module File
_generate_module_eus(heron_isen
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron_isen
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(heron_isen_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(heron_isen_generate_messages heron_isen_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_eus _heron_isen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_eus _heron_isen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_eus _heron_isen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heron_isen_geneus)
add_dependencies(heron_isen_geneus heron_isen_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heron_isen_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron_isen
)
_generate_msg_lisp(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg;/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron_isen
)
_generate_msg_lisp(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron_isen
)

### Generating Services

### Generating Module File
_generate_module_lisp(heron_isen
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron_isen
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(heron_isen_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(heron_isen_generate_messages heron_isen_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_lisp _heron_isen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_lisp _heron_isen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_lisp _heron_isen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heron_isen_genlisp)
add_dependencies(heron_isen_genlisp heron_isen_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heron_isen_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron_isen
)
_generate_msg_nodejs(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg;/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron_isen
)
_generate_msg_nodejs(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron_isen
)

### Generating Services

### Generating Module File
_generate_module_nodejs(heron_isen
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron_isen
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(heron_isen_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(heron_isen_generate_messages heron_isen_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_nodejs _heron_isen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_nodejs _heron_isen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_nodejs _heron_isen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heron_isen_gennodejs)
add_dependencies(heron_isen_gennodejs heron_isen_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heron_isen_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron_isen
)
_generate_msg_py(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg;/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron_isen
)
_generate_msg_py(heron_isen
  "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron_isen
)

### Generating Services

### Generating Module File
_generate_module_py(heron_isen
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron_isen
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(heron_isen_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(heron_isen_generate_messages heron_isen_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitFloat.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_py _heron_isen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/Coulomb_counter_cc75.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_py _heron_isen_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin2_ws/src/heron_isen/msg/ValueUnitInt.msg" NAME_WE)
add_dependencies(heron_isen_generate_messages_py _heron_isen_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heron_isen_genpy)
add_dependencies(heron_isen_genpy heron_isen_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heron_isen_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron_isen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron_isen
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(heron_isen_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(heron_isen_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(heron_isen_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron_isen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron_isen
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(heron_isen_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(heron_isen_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(heron_isen_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron_isen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron_isen
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(heron_isen_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(heron_isen_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(heron_isen_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron_isen)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron_isen
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(heron_isen_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(heron_isen_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(heron_isen_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron_isen)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron_isen\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron_isen
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(heron_isen_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(heron_isen_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(heron_isen_generate_messages_py geometry_msgs_generate_messages_py)
endif()
