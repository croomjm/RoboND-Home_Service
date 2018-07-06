# RoboND-Home_Service

I created a simulated home service robot as part of my Udacity Robotics Nanodegree. A video of a successful run integrating all components of the project can be found (here)[https://youtu.be/UsUsyzTbzNs].

[<img src="https://img.youtube.com/vi/UsUsyzTbzNs/hqdefault.jpg">](https://youtu.be/UsUsyzTbzNs)

The project incorporates a number of elements that would actually be required to implement a home service robot:
1. Build a custom environment in Gazebo (simulating a real environment)
2. Build a map of the environment using gmapping and teleoperation (turtlebot teleop).
3. Use the ROS AMCL library to detect the robot position within the known map.
4. Use the move_base library and the simple action client to plot a path to a target pose and navigate to it.
5. Write a custom node to wrap the path planning and driving libraries and listen for goal poses.
6. Write a custom node to publish goal poses for the robot, then compare these to the actual pose (odometry topic) to determine success.

# Installation
This repository is intended to run only on Linux (Ubuntu) ROS. These instructions assume that your catkin directory exists at /home/workspace/catkin_ws and has already been initialized (see (here)[http://wiki.ros.org/catkin/Tutorials/create_a_workspace]).

To install, clone the repository to /home/workspace/catkin_ws. The command below will pull all required submodules and copy directly to catkin_ws (rather than catkin_ws/RoboND-Home_Service).
`git clone --recurse-submodules https://github.com/croomjm/RoboND-Home_Service.git .`

Once all the necessary files are in place, run the following commands from the catkin_ws directory:
1. `source devel/setup.bash`
2. `catkin_make`
3. `sudo chmod +x src/ShellScripts/*.sh` (Make the launcher shell scripts executable)

The default rviz configuration can be updated to show the marker locations by executing:
`cp /home/workspace/catkin_ws/src/RVizConfig/navigation.rviz /home/workspace/catkin_ws/src/turtlebot_interactions/turtlebot_rviz_launchers/rviz/`

# Running the Simulation
You're ready to go! The fully functional simulation can be run (from catkin_ws/) with the following command:
`./src/ShellScripts/home_service.sh`

A deluge of windows will now overtake your screen!

When the final one pops up and asks if you'd like to run in testing mode, enter 0 and press enter. If 1 is entered, it will merely ignore the actual position of the robot and assume that the goal positions are reached immediately.

Some other shell scripts exist in the same directory to test out portions of the top level program. Feel free to try them out!

