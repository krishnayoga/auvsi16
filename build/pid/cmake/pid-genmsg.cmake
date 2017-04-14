# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pid: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ipid:/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pid_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/plant_msg.msg" NAME_WE)
add_custom_target(_pid_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pid" "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/plant_msg.msg" ""
)

get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/pid_const_msg.msg" NAME_WE)
add_custom_target(_pid_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pid" "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/pid_const_msg.msg" ""
)

get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/controller_msg.msg" NAME_WE)
add_custom_target(_pid_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pid" "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/controller_msg.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pid
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/plant_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid
)
_generate_msg_cpp(pid
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/pid_const_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid
)
_generate_msg_cpp(pid
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/controller_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid
)

### Generating Services

### Generating Module File
_generate_module_cpp(pid
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pid_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pid_generate_messages pid_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/plant_msg.msg" NAME_WE)
add_dependencies(pid_generate_messages_cpp _pid_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/pid_const_msg.msg" NAME_WE)
add_dependencies(pid_generate_messages_cpp _pid_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/controller_msg.msg" NAME_WE)
add_dependencies(pid_generate_messages_cpp _pid_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pid_gencpp)
add_dependencies(pid_gencpp pid_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pid_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pid
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/plant_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid
)
_generate_msg_lisp(pid
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/pid_const_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid
)
_generate_msg_lisp(pid
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/controller_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid
)

### Generating Services

### Generating Module File
_generate_module_lisp(pid
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pid_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pid_generate_messages pid_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/plant_msg.msg" NAME_WE)
add_dependencies(pid_generate_messages_lisp _pid_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/pid_const_msg.msg" NAME_WE)
add_dependencies(pid_generate_messages_lisp _pid_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/controller_msg.msg" NAME_WE)
add_dependencies(pid_generate_messages_lisp _pid_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pid_genlisp)
add_dependencies(pid_genlisp pid_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pid_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pid
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/plant_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid
)
_generate_msg_py(pid
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/pid_const_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid
)
_generate_msg_py(pid
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/controller_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid
)

### Generating Services

### Generating Module File
_generate_module_py(pid
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pid_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pid_generate_messages pid_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/plant_msg.msg" NAME_WE)
add_dependencies(pid_generate_messages_py _pid_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/pid_const_msg.msg" NAME_WE)
add_dependencies(pid_generate_messages_py _pid_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/pid/msg/controller_msg.msg" NAME_WE)
add_dependencies(pid_generate_messages_py _pid_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pid_genpy)
add_dependencies(pid_genpy pid_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pid_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pid
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(pid_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pid
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(pid_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pid
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(pid_generate_messages_py std_msgs_generate_messages_py)
