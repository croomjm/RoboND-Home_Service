#!/bin/sh
terminator -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:='/home/workspace/catkin_ws/src/World/room.world'" &
sleep 5
terminator -e "roslaunch turtlebot_gazebo amcl_demo.launch map_file:='/home/workspace/catkin_ws/src/room_map.yaml'" &
sleep 5
terminator -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 10
terminator -e "rosrun add_markers add_markers"