# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/build

# Include any dependencies generated for this target.
include auvsi16/CMakeFiles/navigation_mission_control_simple.dir/depend.make

# Include the progress variables for this target.
include auvsi16/CMakeFiles/navigation_mission_control_simple.dir/progress.make

# Include the compile flags for this target's objects.
include auvsi16/CMakeFiles/navigation_mission_control_simple.dir/flags.make

auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o: auvsi16/CMakeFiles/navigation_mission_control_simple.dir/flags.make
auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o: /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/src/mission/navigation_mission_control_simple.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o"
	cd /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/build/auvsi16 && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o -c /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/src/mission/navigation_mission_control_simple.cpp

auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.i"
	cd /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/build/auvsi16 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/src/mission/navigation_mission_control_simple.cpp > CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.i

auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.s"
	cd /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/build/auvsi16 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16/src/mission/navigation_mission_control_simple.cpp -o CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.s

auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o.requires:
.PHONY : auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o.requires

auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o.provides: auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o.requires
	$(MAKE) -f auvsi16/CMakeFiles/navigation_mission_control_simple.dir/build.make auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o.provides.build
.PHONY : auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o.provides

auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o.provides.build: auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o

# Object files for target navigation_mission_control_simple
navigation_mission_control_simple_OBJECTS = \
"CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o"

# External object files for target navigation_mission_control_simple
navigation_mission_control_simple_EXTERNAL_OBJECTS =

/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: auvsi16/CMakeFiles/navigation_mission_control_simple.dir/build.make
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/libcv_bridge.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/libimage_transport.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/libmessage_filters.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/libclass_loader.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/libPocoFoundation.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libdl.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/libroslib.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/libroscpp.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/librosconsole.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/liblog4cxx.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/librostime.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /opt/ros/indigo/lib/libcpp_common.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_videostab.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_video.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_superres.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_stitching.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_photo.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_ocl.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_objdetect.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_nonfree.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_ml.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_legacy.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_imgproc.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_highgui.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_gpu.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_flann.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_features2d.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_core.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_contrib.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_calib3d.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libGeographic.so.17.0.0
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_nonfree.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_ocl.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_gpu.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_photo.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_objdetect.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_legacy.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_video.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_ml.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_calib3d.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_features2d.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_highgui.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_imgproc.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_flann.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: /usr/local/lib/libopencv_core.so.2.4.11
/home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple: auvsi16/CMakeFiles/navigation_mission_control_simple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple"
	cd /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/build/auvsi16 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/navigation_mission_control_simple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
auvsi16/CMakeFiles/navigation_mission_control_simple.dir/build: /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/devel/lib/auvsi16/navigation_mission_control_simple
.PHONY : auvsi16/CMakeFiles/navigation_mission_control_simple.dir/build

auvsi16/CMakeFiles/navigation_mission_control_simple.dir/requires: auvsi16/CMakeFiles/navigation_mission_control_simple.dir/src/mission/navigation_mission_control_simple.cpp.o.requires
.PHONY : auvsi16/CMakeFiles/navigation_mission_control_simple.dir/requires

auvsi16/CMakeFiles/navigation_mission_control_simple.dir/clean:
	cd /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/build/auvsi16 && $(CMAKE_COMMAND) -P CMakeFiles/navigation_mission_control_simple.dir/cmake_clean.cmake
.PHONY : auvsi16/CMakeFiles/navigation_mission_control_simple.dir/clean

auvsi16/CMakeFiles/navigation_mission_control_simple.dir/depend:
	cd /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/src/auvsi16 /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/build /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/build/auvsi16 /home/aldwinakbar/Dropbox/Projects/campus/team/TRUI/amvui2015/AI/build/auvsi16/CMakeFiles/navigation_mission_control_simple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : auvsi16/CMakeFiles/navigation_mission_control_simple.dir/depend

