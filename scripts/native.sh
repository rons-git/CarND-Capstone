set -x
cd ..
dir
echo "Building the environment"
cd ros
catkin_make
dir
#source /capstone/ros/devel/setup.bash
#echo "Running roscore"
#roscore &
#sleep 5
#echo "Launching the nodes"
#roslaunch /capstone/ros/launch/styx.launch &