cmake_minimum_required(VERSION 2.8.3)
project(auvsi16)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  cv_bridge
  image_transport
  mavros_msgs
  roscpp
  rospy
  sensor_msgs
  std_msgs
  message_generation
)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)
find_package(OpenCV REQUIRED)
find_package(GeographicLib 1.46 REQUIRED)

## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++0x")

################################################
## Declare ROS messages, services and actions ##
################################################

## To declare and build messages, services or actions from within this
## package, follow these steps:
## * Let MSG_DEP_SET be the set of packages whose message types you use in
##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).
## * In the file package.xml:
##   * add a build_depend tag for "message_generation"
##   * add a build_depend and a run_depend tag for each package in MSG_DEP_SET
##   * If MSG_DEP_SET isn't empty the following dependency has been pulled in
##     but can be declared for certainty nonetheless:
##     * add a run_depend tag for "message_runtime"
## * In this file (CMakeLists.txt):
##   * add "message_generation" and every package in MSG_DEP_SET to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * add "message_runtime" and every package in MSG_DEP_SET to
##     catkin_package(CATKIN_DEPENDS ...)
##   * uncomment the add_*_files sections below as needed
##     and list every .msg/.srv/.action file to be processed
##   * uncomment the generate_messages entry below
##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)

## Generate messages in the 'msg' folder
 add_message_files(
   FILES
   ImageProcessing.msg
   HSVValue.msg
   differential_controller.msg
   overrideMotorRC.msg
   sonarData.msg
   RobosubLauncher.msg
 )

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   waypointSet.srv
# )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
    mavros_msgs#   sensor_msgs#   std_msgs
	std_msgs
 )

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

## To declare and build dynamic reconfigure parameters within this
## package, follow these steps:
## * In the file package.xml:
##   * add a build_depend and a run_depend tag for "dynamic_reconfigure"
## * In this file (CMakeLists.txt):
##   * add "dynamic_reconfigure" to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * uncomment the "generate_dynamic_reconfigure_options" section below
##     and list every .cfg file to be processed

## Generate dynamic reconfigure parameters in the 'cfg' folder
# generate_dynamic_reconfigure_options(
#   cfg/DynReconf1.cfg
#   cfg/DynReconf2.cfg
# )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES auvsi16
#  CATKIN_DEPENDS cv_bridge image_transport mavros_msgs roscpp rospy sensor_msgs std_msgs
#  DEPENDS system_lib
CATKIN_DEPENDS message_runtime
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
  ${GeographicLib_INCLUDE_DIRS}
)

## Declare a C++ library
# add_library(auvsi16
#   src/${PROJECT_NAME}/auvsi16.cpp
# )

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
# add_dependencies(auvsi16 ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Declare a C++ executable
# add_executable(auvsi16_node src/auvsi16_node.cpp)
add_executable(video_feed_right src/video/video_feed_right.cpp)
add_executable(video_feed_front src/video/video_feed_front.cpp)
add_executable(video_feed_upstream src/video/video_feed_upstream.cpp)
add_executable(ground_monitor src/video/ground_monitor.cpp)
add_executable(heartbeat src/communication/heartbeat.cpp )
add_executable(run_course src/communication/run_course.cpp )
add_executable(motor_controller src/motor_controller.cpp)
add_executable(override_monitor src/override_monitor.cpp)
add_executable(node_controller src/node_controller.cpp )

## Declare a C++ executable for testing

add_executable(renamespaced_mavros misc/ros/testing/renamespaced_mavros.cpp )
target_link_libraries(renamespaced_mavros
${catkin_LIBRARIES}
${OpenCV_LIBRARIES}
${GeographicLib_LIBRARIES}
)

add_executable(image_processing src/mission/image_processing.cpp )
target_link_libraries(image_processing
${catkin_LIBRARIES}
${OpenCV_LIBRARIES}
${GeographicLib_LIBRARIES}
)

add_executable(docking_mission_control src/mission/docking_mission_control.cpp )
target_link_libraries(docking_mission_control
${catkin_LIBRARIES}
${OpenCV_LIBRARIES}
${GeographicLib_LIBRARIES}
)

add_executable(navigation_mission_control src/mission/navigation_mission_control.cpp )
target_link_libraries(navigation_mission_control
${catkin_LIBRARIES}
${OpenCV_LIBRARIES}
${GeographicLib_LIBRARIES}
)

add_executable(navigation_mission_control_simple src/mission/navigation_mission_control_simple.cpp )
target_link_libraries(navigation_mission_control_simple
${catkin_LIBRARIES}
${OpenCV_LIBRARIES}
${GeographicLib_LIBRARIES}
)

add_executable(obstacle_mission_control_simple src/mission/obstacle_mission_control_simple.cpp )
target_link_libraries(obstacle_mission_control_simple
${catkin_LIBRARIES}
${OpenCV_LIBRARIES}
${GeographicLib_LIBRARIES}
)

add_executable(interoperability_mission_control_simple src/mission/interoperability_mission_control_simple.cpp )
target_link_libraries(interoperability_mission_control_simple
${catkin_LIBRARIES}
${OpenCV_LIBRARIES}
${GeographicLib_LIBRARIES}
)

## Add cmake target dependencies of the executable
## same as for the library above
# add_dependencies(auvsi16_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
# target_link_libraries(auvsi16_node
#   ${catkin_LIBRARIES}
# )


target_link_libraries(node_controller
${catkin_LIBRARIES}
${OpenCV_LIBRARIES}
${GeographicLib_LIBRARIES}
)

target_link_libraries(run_course
	${catkin_LIBRARIES}
	${OpenCV_LIBRARIES}
	${GeographicLib_LIBRARIES}
)
target_link_libraries(heartbeat
	${catkin_LIBRARIES}
	${OpenCV_LIBRARIES}
	${GeographicLib_LIBRARIES}
)

target_link_libraries(ground_monitor
	${catkin_LIBRARIES}
	${OpenCV_LIBRARIES}
)

target_link_libraries(override_monitor
	${catkin_LIBRARIES}
	${OpenCV_LIBRARIES}
)

target_link_libraries(motor_controller
	${catkin_LIBRARIES}
)

target_link_libraries(video_feed_right
	${catkin_LIBRARIES}
	${OpenCV_LIBRARIES}
	-lv4l2
)

target_link_libraries(video_feed_front
	${catkin_LIBRARIES}
	${OpenCV_LIBRARIES}
	-lv4l2
)

target_link_libraries(video_feed_upstream
	${catkin_LIBRARIES}
	${OpenCV_LIBRARIES}
)

#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
# install(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables and/or libraries for installation
# install(TARGETS auvsi16 auvsi16_node
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark cpp header files for installation
 install(DIRECTORY include/${PROJECT_NAME}/
   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
   FILES_MATCHING PATTERN "*.hpp"
   PATTERN ".svn" EXCLUDE
 )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_auvsi16.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
