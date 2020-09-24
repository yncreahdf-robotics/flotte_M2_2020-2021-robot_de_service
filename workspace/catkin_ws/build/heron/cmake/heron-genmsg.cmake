# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "heron: 5 messages, 0 services")

set(MSG_I_FLAGS "-Iheron:/root/workspace/catkin_ws/src/heron_software/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(heron_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg" NAME_WE)
add_custom_target(_heron_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "heron" "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg" ""
)

get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg" NAME_WE)
add_custom_target(_heron_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "heron" "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg" ""
)

get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg" NAME_WE)
add_custom_target(_heron_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "heron" "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg" ""
)

get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg" NAME_WE)
add_custom_target(_heron_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "heron" "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg" ""
)

get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg" NAME_WE)
add_custom_target(_heron_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "heron" "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron
)
_generate_msg_cpp(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron
)
_generate_msg_cpp(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron
)
_generate_msg_cpp(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron
)
_generate_msg_cpp(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron
)

### Generating Services

### Generating Module File
_generate_module_cpp(heron
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(heron_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(heron_generate_messages heron_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg" NAME_WE)
add_dependencies(heron_generate_messages_cpp _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg" NAME_WE)
add_dependencies(heron_generate_messages_cpp _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg" NAME_WE)
add_dependencies(heron_generate_messages_cpp _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg" NAME_WE)
add_dependencies(heron_generate_messages_cpp _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg" NAME_WE)
add_dependencies(heron_generate_messages_cpp _heron_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heron_gencpp)
add_dependencies(heron_gencpp heron_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heron_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron
)
_generate_msg_eus(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron
)
_generate_msg_eus(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron
)
_generate_msg_eus(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron
)
_generate_msg_eus(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron
)

### Generating Services

### Generating Module File
_generate_module_eus(heron
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(heron_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(heron_generate_messages heron_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg" NAME_WE)
add_dependencies(heron_generate_messages_eus _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg" NAME_WE)
add_dependencies(heron_generate_messages_eus _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg" NAME_WE)
add_dependencies(heron_generate_messages_eus _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg" NAME_WE)
add_dependencies(heron_generate_messages_eus _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg" NAME_WE)
add_dependencies(heron_generate_messages_eus _heron_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heron_geneus)
add_dependencies(heron_geneus heron_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heron_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron
)
_generate_msg_lisp(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron
)
_generate_msg_lisp(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron
)
_generate_msg_lisp(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron
)
_generate_msg_lisp(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron
)

### Generating Services

### Generating Module File
_generate_module_lisp(heron
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(heron_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(heron_generate_messages heron_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg" NAME_WE)
add_dependencies(heron_generate_messages_lisp _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg" NAME_WE)
add_dependencies(heron_generate_messages_lisp _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg" NAME_WE)
add_dependencies(heron_generate_messages_lisp _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg" NAME_WE)
add_dependencies(heron_generate_messages_lisp _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg" NAME_WE)
add_dependencies(heron_generate_messages_lisp _heron_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heron_genlisp)
add_dependencies(heron_genlisp heron_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heron_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron
)
_generate_msg_nodejs(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron
)
_generate_msg_nodejs(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron
)
_generate_msg_nodejs(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron
)
_generate_msg_nodejs(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron
)

### Generating Services

### Generating Module File
_generate_module_nodejs(heron
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(heron_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(heron_generate_messages heron_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg" NAME_WE)
add_dependencies(heron_generate_messages_nodejs _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg" NAME_WE)
add_dependencies(heron_generate_messages_nodejs _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg" NAME_WE)
add_dependencies(heron_generate_messages_nodejs _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg" NAME_WE)
add_dependencies(heron_generate_messages_nodejs _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg" NAME_WE)
add_dependencies(heron_generate_messages_nodejs _heron_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heron_gennodejs)
add_dependencies(heron_gennodejs heron_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heron_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron
)
_generate_msg_py(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron
)
_generate_msg_py(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron
)
_generate_msg_py(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron
)
_generate_msg_py(heron
  "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron
)

### Generating Services

### Generating Module File
_generate_module_py(heron
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(heron_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(heron_generate_messages heron_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitFloat.msg" NAME_WE)
add_dependencies(heron_generate_messages_py _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/ValueUnitInt.msg" NAME_WE)
add_dependencies(heron_generate_messages_py _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/winch.msg" NAME_WE)
add_dependencies(heron_generate_messages_py _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Motion.msg" NAME_WE)
add_dependencies(heron_generate_messages_py _heron_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/workspace/catkin_ws/src/heron_software/msg/Encoders.msg" NAME_WE)
add_dependencies(heron_generate_messages_py _heron_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heron_genpy)
add_dependencies(heron_genpy heron_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heron_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heron
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(heron_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/heron
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(heron_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heron
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(heron_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/heron
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(heron_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heron/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(heron_generate_messages_py std_msgs_generate_messages_py)
endif()
