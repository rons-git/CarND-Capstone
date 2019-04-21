#!/bin/bash

source /capstone/ros/devel/setup.bash
cd /capstone/ros
echo "Building the environment"
catkin_make
echo "Running roscore"
roscore &
sleep 5
echo "Launching the nodes"
roslaunch /capstone/ros/launch/styx.launch &