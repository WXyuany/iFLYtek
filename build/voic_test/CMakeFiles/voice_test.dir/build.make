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
include voic_test/CMakeFiles/voice_test.dir/depend.make

# Include the progress variables for this target.
include voic_test/CMakeFiles/voice_test.dir/progress.make

# Include the compile flags for this target's objects.
include voic_test/CMakeFiles/voice_test.dir/flags.make

voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o: voic_test/CMakeFiles/voice_test.dir/flags.make
voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o: /home/ucar/ucar_ws/src/voic_test/src/voice_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ucar/ucar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o"
	cd /home/ucar/ucar_ws/build/voic_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/voice_test.dir/src/voice_test.cpp.o -c /home/ucar/ucar_ws/src/voic_test/src/voice_test.cpp

voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/voice_test.dir/src/voice_test.cpp.i"
	cd /home/ucar/ucar_ws/build/voic_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ucar/ucar_ws/src/voic_test/src/voice_test.cpp > CMakeFiles/voice_test.dir/src/voice_test.cpp.i

voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/voice_test.dir/src/voice_test.cpp.s"
	cd /home/ucar/ucar_ws/build/voic_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ucar/ucar_ws/src/voic_test/src/voice_test.cpp -o CMakeFiles/voice_test.dir/src/voice_test.cpp.s

voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o.requires:

.PHONY : voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o.requires

voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o.provides: voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o.requires
	$(MAKE) -f voic_test/CMakeFiles/voice_test.dir/build.make voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o.provides.build
.PHONY : voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o.provides

voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o.provides.build: voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o


# Object files for target voice_test
voice_test_OBJECTS = \
"CMakeFiles/voice_test.dir/src/voice_test.cpp.o"

# External object files for target voice_test
voice_test_EXTERNAL_OBJECTS =

/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: voic_test/CMakeFiles/voice_test.dir/build.make
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /opt/ros/melodic/lib/libactionlib.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /opt/ros/melodic/lib/libroscpp.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /opt/ros/melodic/lib/librosconsole.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /opt/ros/melodic/lib/librostime.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /opt/ros/melodic/lib/libcpp_common.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/ucar/ucar_ws/devel/lib/voice_test/voice_test: voic_test/CMakeFiles/voice_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ucar/ucar_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ucar/ucar_ws/devel/lib/voice_test/voice_test"
	cd /home/ucar/ucar_ws/build/voic_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/voice_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
voic_test/CMakeFiles/voice_test.dir/build: /home/ucar/ucar_ws/devel/lib/voice_test/voice_test

.PHONY : voic_test/CMakeFiles/voice_test.dir/build

voic_test/CMakeFiles/voice_test.dir/requires: voic_test/CMakeFiles/voice_test.dir/src/voice_test.cpp.o.requires

.PHONY : voic_test/CMakeFiles/voice_test.dir/requires

voic_test/CMakeFiles/voice_test.dir/clean:
	cd /home/ucar/ucar_ws/build/voic_test && $(CMAKE_COMMAND) -P CMakeFiles/voice_test.dir/cmake_clean.cmake
.PHONY : voic_test/CMakeFiles/voice_test.dir/clean

voic_test/CMakeFiles/voice_test.dir/depend:
	cd /home/ucar/ucar_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ucar/ucar_ws/src /home/ucar/ucar_ws/src/voic_test /home/ucar/ucar_ws/build /home/ucar/ucar_ws/build/voic_test /home/ucar/ucar_ws/build/voic_test/CMakeFiles/voice_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : voic_test/CMakeFiles/voice_test.dir/depend

