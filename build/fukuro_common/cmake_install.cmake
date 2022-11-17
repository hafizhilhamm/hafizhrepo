# Install script for directory: /home/hafizh/magang2/src/fukuro_common

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hafizh/magang2/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fukuro_common/msg" TYPE FILE FILES
    "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg"
    "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fukuro_common/srv" TYPE FILE FILES
    "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv"
    "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fukuro_common/cmake" TYPE FILE FILES "/home/hafizh/magang2/build/fukuro_common/catkin_generated/installspace/fukuro_common-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hafizh/magang2/devel/include/fukuro_common")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/hafizh/magang2/devel/share/roseus/ros/fukuro_common")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hafizh/magang2/devel/share/common-lisp/ros/fukuro_common")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/hafizh/magang2/devel/share/gennodejs/ros/fukuro_common")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/hafizh/magang2/devel/lib/python3/dist-packages/fukuro_common")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/hafizh/magang2/devel/lib/python3/dist-packages/fukuro_common")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hafizh/magang2/build/fukuro_common/catkin_generated/installspace/fukuro_common.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fukuro_common/cmake" TYPE FILE FILES "/home/hafizh/magang2/build/fukuro_common/catkin_generated/installspace/fukuro_common-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fukuro_common/cmake" TYPE FILE FILES
    "/home/hafizh/magang2/build/fukuro_common/catkin_generated/installspace/fukuro_commonConfig.cmake"
    "/home/hafizh/magang2/build/fukuro_common/catkin_generated/installspace/fukuro_commonConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fukuro_common" TYPE FILE FILES "/home/hafizh/magang2/src/fukuro_common/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfukuro_common.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfukuro_common.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfukuro_common.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/hafizh/magang2/devel/lib/libfukuro_common.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfukuro_common.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfukuro_common.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfukuro_common.so"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfukuro_common.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/fukuro_common" TYPE DIRECTORY FILES "/home/hafizh/magang2/src/fukuro_common/include/fukuro_common/")
endif()

