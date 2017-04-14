# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "auvsi16: 6 messages, 0 services")

set(MSG_I_FLAGS "-Iauvsi16:/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg;-Imavros_msgs:/opt/ros/indigo/share/mavros_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(auvsi16_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/ImageProcessing.msg" NAME_WE)
add_custom_target(_auvsi16_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "auvsi16" "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/ImageProcessing.msg" ""
)

get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/sonarData.msg" NAME_WE)
add_custom_target(_auvsi16_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "auvsi16" "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/sonarData.msg" ""
)

get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/RobosubLauncher.msg" NAME_WE)
add_custom_target(_auvsi16_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "auvsi16" "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/RobosubLauncher.msg" ""
)

get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/overrideMotorRC.msg" NAME_WE)
add_custom_target(_auvsi16_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "auvsi16" "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/overrideMotorRC.msg" ""
)

get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/differential_controller.msg" NAME_WE)
add_custom_target(_auvsi16_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "auvsi16" "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/differential_controller.msg" ""
)

get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/HSVValue.msg" NAME_WE)
add_custom_target(_auvsi16_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "auvsi16" "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/HSVValue.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/ImageProcessing.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auvsi16
)
_generate_msg_cpp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/sonarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auvsi16
)
_generate_msg_cpp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/RobosubLauncher.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auvsi16
)
_generate_msg_cpp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/overrideMotorRC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auvsi16
)
_generate_msg_cpp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/differential_controller.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auvsi16
)
_generate_msg_cpp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/HSVValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auvsi16
)

### Generating Services

### Generating Module File
_generate_module_cpp(auvsi16
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auvsi16
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(auvsi16_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(auvsi16_generate_messages auvsi16_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/ImageProcessing.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_cpp _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/sonarData.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_cpp _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/RobosubLauncher.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_cpp _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/overrideMotorRC.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_cpp _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/differential_controller.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_cpp _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/HSVValue.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_cpp _auvsi16_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(auvsi16_gencpp)
add_dependencies(auvsi16_gencpp auvsi16_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS auvsi16_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/ImageProcessing.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auvsi16
)
_generate_msg_lisp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/sonarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auvsi16
)
_generate_msg_lisp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/RobosubLauncher.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auvsi16
)
_generate_msg_lisp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/overrideMotorRC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auvsi16
)
_generate_msg_lisp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/differential_controller.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auvsi16
)
_generate_msg_lisp(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/HSVValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auvsi16
)

### Generating Services

### Generating Module File
_generate_module_lisp(auvsi16
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auvsi16
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(auvsi16_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(auvsi16_generate_messages auvsi16_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/ImageProcessing.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_lisp _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/sonarData.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_lisp _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/RobosubLauncher.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_lisp _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/overrideMotorRC.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_lisp _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/differential_controller.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_lisp _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/HSVValue.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_lisp _auvsi16_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(auvsi16_genlisp)
add_dependencies(auvsi16_genlisp auvsi16_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS auvsi16_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/ImageProcessing.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auvsi16
)
_generate_msg_py(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/sonarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auvsi16
)
_generate_msg_py(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/RobosubLauncher.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auvsi16
)
_generate_msg_py(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/overrideMotorRC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auvsi16
)
_generate_msg_py(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/differential_controller.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auvsi16
)
_generate_msg_py(auvsi16
  "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/HSVValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auvsi16
)

### Generating Services

### Generating Module File
_generate_module_py(auvsi16
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auvsi16
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(auvsi16_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(auvsi16_generate_messages auvsi16_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/ImageProcessing.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_py _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/sonarData.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_py _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/RobosubLauncher.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_py _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/overrideMotorRC.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_py _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/differential_controller.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_py _auvsi16_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/msg/HSVValue.msg" NAME_WE)
add_dependencies(auvsi16_generate_messages_py _auvsi16_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(auvsi16_genpy)
add_dependencies(auvsi16_genpy auvsi16_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS auvsi16_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auvsi16)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auvsi16
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(auvsi16_generate_messages_cpp mavros_msgs_generate_messages_cpp)
add_dependencies(auvsi16_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auvsi16)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auvsi16
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(auvsi16_generate_messages_lisp mavros_msgs_generate_messages_lisp)
add_dependencies(auvsi16_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auvsi16)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auvsi16\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auvsi16
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(auvsi16_generate_messages_py mavros_msgs_generate_messages_py)
add_dependencies(auvsi16_generate_messages_py std_msgs_generate_messages_py)
