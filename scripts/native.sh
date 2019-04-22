cd ..
echo "Building the environment"
catkin_make
source /capstone/ros/devel/setup.bash
cd /capstone/ros
echo "Running roscore"
roscore &
sleep 5
echo "Launching the nodes"
roslaunch /capstone/ros/launch/styx.launch &