# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 2.8.3)
project(beginner_tutorials)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg)

## Declare ROS messages and services
add_service_files(FILES GoToCertainCell.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

## Build service client and server
# %Tag(SRVCLIENT)%
add_executable(go_to_certain_cell src/go_to_certain_cell.cpp)
target_link_libraries(go_to_certain_cell ${catkin_LIBRARIES})
add_dependencies(go_to_certain_cell beginner_tutorials_gencpp)
