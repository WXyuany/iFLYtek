# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/ucar/ucar_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ucar/ucar_ws/build

# Include any dependencies generated for this target.
include usb_cam/CMakeFiles/v4l_driver.dir/depend.make

# Include the progress variables for this target.
include usb_cam/CMakeFiles/v4l_driver.dir/progress.make

# Include the compile flags for this target's objects.
include usb_cam/CMakeFiles/v4l_driver.dir/flags.make

usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o: usb_cam/CMakeFiles/v4l_driver.dir/flags.make
usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o: /home/ucar/ucar_ws/src/usb_cam/src/util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ucar/ucar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o"
	cd /home/ucar/ucar_ws/build/usb_cam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/v4l_driver.dir/src/util.cpp.o -c /home/ucar/ucar_ws/src/usb_cam/src/util.cpp

usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/v4l_driver.dir/src/util.cpp.i"
	cd /home/ucar/ucar_ws/build/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ucar/ucar_ws/src/usb_cam/src/util.cpp > CMakeFiles/v4l_driver.dir/src/util.cpp.i

usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/v4l_driver.dir/src/util.cpp.s"
	cd /home/ucar/ucar_ws/build/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ucar/ucar_ws/src/usb_cam/src/util.cpp -o CMakeFiles/v4l_driver.dir/src/util.cpp.s

usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o.requires:

.PHONY : usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o.requires

usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o.provides: usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o.requires
	$(MAKE) -f usb_cam/CMakeFiles/v4l_driver.dir/build.make usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o.provides.build
.PHONY : usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o.provides

usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o.provides.build: usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o


usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o: usb_cam/CMakeFiles/v4l_driver.dir/flags.make
usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o: /home/ucar/ucar_ws/src/usb_cam/src/converters.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ucar/ucar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o"
	cd /home/ucar/ucar_ws/build/usb_cam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/v4l_driver.dir/src/converters.cpp.o -c /home/ucar/ucar_ws/src/usb_cam/src/converters.cpp

usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/v4l_driver.dir/src/converters.cpp.i"
	cd /home/ucar/ucar_ws/build/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ucar/ucar_ws/src/usb_cam/src/converters.cpp > CMakeFiles/v4l_driver.dir/src/converters.cpp.i

usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/v4l_driver.dir/src/converters.cpp.s"
	cd /home/ucar/ucar_ws/build/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ucar/ucar_ws/src/usb_cam/src/converters.cpp -o CMakeFiles/v4l_driver.dir/src/converters.cpp.s

usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o.requires:

.PHONY : usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o.requires

usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o.provides: usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o.requires
	$(MAKE) -f usb_cam/CMakeFiles/v4l_driver.dir/build.make usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o.provides.build
.PHONY : usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o.provides

usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o.provides.build: usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o


usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o: usb_cam/CMakeFiles/v4l_driver.dir/flags.make
usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o: /home/ucar/ucar_ws/src/usb_cam/src/camera_driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ucar/ucar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o"
	cd /home/ucar/ucar_ws/build/usb_cam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o -c /home/ucar/ucar_ws/src/usb_cam/src/camera_driver.cpp

usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.i"
	cd /home/ucar/ucar_ws/build/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ucar/ucar_ws/src/usb_cam/src/camera_driver.cpp > CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.i

usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.s"
	cd /home/ucar/ucar_ws/build/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ucar/ucar_ws/src/usb_cam/src/camera_driver.cpp -o CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.s

usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o.requires:

.PHONY : usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o.requires

usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o.provides: usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o.requires
	$(MAKE) -f usb_cam/CMakeFiles/v4l_driver.dir/build.make usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o.provides.build
.PHONY : usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o.provides

usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o.provides.build: usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o


# Object files for target v4l_driver
v4l_driver_OBJECTS = \
"CMakeFiles/v4l_driver.dir/src/util.cpp.o" \
"CMakeFiles/v4l_driver.dir/src/converters.cpp.o" \
"CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o"

# External object files for target v4l_driver
v4l_driver_EXTERNAL_OBJECTS =

/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: usb_cam/CMakeFiles/v4l_driver.dir/build.make
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_dnn.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_gapi.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_ml.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_objdetect.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_photo.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_stitching.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_video.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_calib3d.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_features2d.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_flann.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_highgui.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_videoio.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_imgcodecs.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_imgproc.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: /usr/local/lib/libopencv_core.so.4.1.0
/home/ucar/ucar_ws/devel/lib/libv4l_driver.so: usb_cam/CMakeFiles/v4l_driver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ucar/ucar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library /home/ucar/ucar_ws/devel/lib/libv4l_driver.so"
	cd /home/ucar/ucar_ws/build/usb_cam && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/v4l_driver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
usb_cam/CMakeFiles/v4l_driver.dir/build: /home/ucar/ucar_ws/devel/lib/libv4l_driver.so

.PHONY : usb_cam/CMakeFiles/v4l_driver.dir/build

usb_cam/CMakeFiles/v4l_driver.dir/requires: usb_cam/CMakeFiles/v4l_driver.dir/src/util.cpp.o.requires
usb_cam/CMakeFiles/v4l_driver.dir/requires: usb_cam/CMakeFiles/v4l_driver.dir/src/converters.cpp.o.requires
usb_cam/CMakeFiles/v4l_driver.dir/requires: usb_cam/CMakeFiles/v4l_driver.dir/src/camera_driver.cpp.o.requires

.PHONY : usb_cam/CMakeFiles/v4l_driver.dir/requires

usb_cam/CMakeFiles/v4l_driver.dir/clean:
	cd /home/ucar/ucar_ws/build/usb_cam && $(CMAKE_COMMAND) -P CMakeFiles/v4l_driver.dir/cmake_clean.cmake
.PHONY : usb_cam/CMakeFiles/v4l_driver.dir/clean

usb_cam/CMakeFiles/v4l_driver.dir/depend:
	cd /home/ucar/ucar_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ucar/ucar_ws/src /home/ucar/ucar_ws/src/usb_cam /home/ucar/ucar_ws/build /home/ucar/ucar_ws/build/usb_cam /home/ucar/ucar_ws/build/usb_cam/CMakeFiles/v4l_driver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : usb_cam/CMakeFiles/v4l_driver.dir/depend

