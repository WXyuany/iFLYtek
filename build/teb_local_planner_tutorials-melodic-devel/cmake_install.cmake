# Install script for directory: /home/ucar/ucar_ws/src/teb_local_planner_tutorials-melodic-devel

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ucar/ucar_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ucar/ucar_ws/build/teb_local_planner_tutorials-melodic-devel/catkin_generated/installspace/teb_local_planner_tutorials.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teb_local_planner_tutorials/cmake" TYPE FILE FILES
    "/home/ucar/ucar_ws/build/teb_local_planner_tutorials-melodic-devel/catkin_generated/installspace/teb_local_planner_tutorialsConfig.cmake"
    "/home/ucar/ucar_ws/build/teb_local_planner_tutorials-melodic-devel/catkin_generated/installspace/teb_local_planner_tutorialsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teb_local_planner_tutorials" TYPE FILE FILES "/home/ucar/ucar_ws/src/teb_local_planner_tutorials-melodic-devel/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teb_local_planner_tutorials" TYPE DIRECTORY FILES
    "/home/ucar/ucar_ws/src/teb_local_planner_tutorials-melodic-devel/launch"
    "/home/ucar/ucar_ws/src/teb_local_planner_tutorials-melodic-devel/cfg"
    "/home/ucar/ucar_ws/src/teb_local_planner_tutorials-melodic-devel/maps"
    "/home/ucar/ucar_ws/src/teb_local_planner_tutorials-melodic-devel/stage"
    "/home/ucar/ucar_ws/src/teb_local_planner_tutorials-melodic-devel/scripts"
    REGEX "/\\.svn$" EXCLUDE)
endif()

