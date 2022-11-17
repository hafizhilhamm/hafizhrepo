# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fukuro_common: 33 messages, 15 services")

set(MSG_I_FLAGS "-Ifukuro_common:/home/hafizh/magang2/src/fukuro_common/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fukuro_common_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg" "fukuro_common/PWM:fukuro_common/Encoder:geometry_msgs/Pose2D:fukuro_common/Compass"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg" "fukuro_common/MotorVel:fukuro_common/DribblerControl:fukuro_common/VelCmd"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg" "fukuro_common/Point2d"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg" "fukuro_common/Obstacle:fukuro_common/Point2d"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg" "fukuro_common/Point2d"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg" "fukuro_common/Point2d"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg" "geometry_msgs/Pose2D:std_msgs/String"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg" "fukuro_common/MotorVel:fukuro_common/DribblerControl"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg" "fukuro_common/Obstacle:fukuro_common/Point2d"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg" "fukuro_common/MotorVel:fukuro_common/RobotVel"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg" "fukuro_common/Point2d"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg" "fukuro_common/Obstacle:geometry_msgs/Pose2D:geometry_msgs/Point:fukuro_common/Point2d"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv" "fukuro_common/MotorParameter"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv" "fukuro_common/MotorParameter"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv" "fukuro_common/Compass"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv" "fukuro_common/Obstacle:fukuro_common/Point2d"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv" "fukuro_common/Parameter"
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv" ""
)

get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv" NAME_WE)
add_custom_target(_fukuro_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fukuro_common" "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv" "geometry_msgs/Pose2D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg;/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg;/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_msg_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)

### Generating Services
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)
_generate_srv_cpp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
)

### Generating Module File
_generate_module_cpp(fukuro_common
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fukuro_common_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fukuro_common_generate_messages fukuro_common_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_cpp _fukuro_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fukuro_common_gencpp)
add_dependencies(fukuro_common_gencpp fukuro_common_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fukuro_common_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg;/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg;/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_msg_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)

### Generating Services
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)
_generate_srv_eus(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
)

### Generating Module File
_generate_module_eus(fukuro_common
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fukuro_common_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fukuro_common_generate_messages fukuro_common_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_eus _fukuro_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fukuro_common_geneus)
add_dependencies(fukuro_common_geneus fukuro_common_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fukuro_common_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg;/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg;/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_msg_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)

### Generating Services
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)
_generate_srv_lisp(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
)

### Generating Module File
_generate_module_lisp(fukuro_common
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fukuro_common_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fukuro_common_generate_messages fukuro_common_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_lisp _fukuro_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fukuro_common_genlisp)
add_dependencies(fukuro_common_genlisp fukuro_common_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fukuro_common_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg;/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg;/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_msg_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)

### Generating Services
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)
_generate_srv_nodejs(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
)

### Generating Module File
_generate_module_nodejs(fukuro_common
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fukuro_common_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fukuro_common_generate_messages fukuro_common_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_nodejs _fukuro_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fukuro_common_gennodejs)
add_dependencies(fukuro_common_gennodejs fukuro_common_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fukuro_common_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg;/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg;/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg;/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_msg_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)

### Generating Services
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg;/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv"
  "${MSG_I_FLAGS}"
  "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)
_generate_srv_py(fukuro_common
  "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
)

### Generating Module File
_generate_module_py(fukuro_common
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fukuro_common_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fukuro_common_generate_messages fukuro_common_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Angle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Ball.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Communication.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Compass.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/DribblerControl.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Encoder.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWController.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerCommand.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/HWControllerManual.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Localization.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorParameter.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/MotorVel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Obstacles.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OmnivisionInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/OdometryInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PathPlan.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Parameter.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Point2d.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/PWM.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControlInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotControl.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotUtility.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/RobotVel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/SerialData.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyInfo.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StrategyParam.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/StaticObstacle.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/STMData.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Teammates.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/VelCmd.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/Whites.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/msg/WorldModel.msg" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/CommunicationService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerAutotuning.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerParam.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerPIParam.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/HWControllerSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/LocalizationSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/ObstaclesService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/OdometryCalibration.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerInfoSrv.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/PlannerService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/Shoot.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/SpeedTuning.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StaticObstacles.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hafizh/magang2/src/fukuro_common/srv/StrategyService.srv" NAME_WE)
add_dependencies(fukuro_common_generate_messages_py _fukuro_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fukuro_common_genpy)
add_dependencies(fukuro_common_genpy fukuro_common_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fukuro_common_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fukuro_common
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fukuro_common_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(fukuro_common_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fukuro_common
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fukuro_common_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(fukuro_common_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fukuro_common
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fukuro_common_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(fukuro_common_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fukuro_common
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fukuro_common_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(fukuro_common_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fukuro_common
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fukuro_common_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(fukuro_common_generate_messages_py geometry_msgs_generate_messages_py)
endif()
