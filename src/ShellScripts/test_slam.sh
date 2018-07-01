#!/bin/sh

terminator -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:='/home/workspace/catkin_ws/src/World/room.world'" &
sleep 5
terminator -e "roslaunch turtlebot_gazebo gmapping_demo.launch" &
sleep 2
terminator -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
terminator -e "roslaunch turtlebot_teleop keyboard_teleop.launch"