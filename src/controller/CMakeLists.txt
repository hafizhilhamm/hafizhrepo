cmake_minimum_required(VERSION 3.0.2)
project(controller)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  message_generation
  std_msgs
  geometry_msgs
)

add_message_files(
  FILES
  PWM.msg
)

# set(CMAKE_AUTOMOC ON)
# set(CMAKE_AUTOUIC ON)
# set(CMAKE_INCLUDE_CURRENT_DIR ON)

# find_package(Qt5Core REQUIRED)
# find_package(Qt5Gui REQUIRED)
# find_package(Qt5Widgets REQUIRED)
# find_package(Qt5SerialPort REQUIRED)
# find_package(Qt5PrintSupport REQUIRED)
generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES controller
 CATKIN_DEPENDS roscpp std_msgs message_runtime
#  DEPENDS system_lib
)

# add_library(${PROJECT_NAME}_lib
#   src/controller.cpp
#   include/controller.h
# )

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

# target_link_libraries(${PROJECT_NAME}_lib
#   Qt5::Gui Qt5::Core Qt5::Widgets Qt5::PrintSupport Qt5::SerialPort
#   ${catkin_LIBRARIES}
# )

add_executable(high_level_${PROJECT_NAME} src/high_level.cpp)
target_link_libraries(high_level_${PROJECT_NAME} ${catkin_LIBRARIES})

add_executable(low_level_${PROJECT_NAME} src/low_level.cpp)
target_link_libraries(low_level_${PROJECT_NAME} ${catkin_LIBRARIES})

add_executable(robot_${PROJECT_NAME} src/test.cpp)
target_link_libraries(robot_${PROJECT_NAME} ${catkin_LIBRARIES})


# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

# target_link_libraries(${PROJECT_NAME}_node
  # ${catkin_LIBRARIES}
  # ${PROJECT_NAME}_lib
# )