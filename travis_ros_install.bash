#!/bin/bash -xve

#required packages
<<<<<<< HEAD
sudo pip install catkin_pkg
sudo pip install empy
sudo pip install pyyaml
sudo pip install rospkg

#ros install
cd ..
git clone https://github.com/ryichiueda/ros_setup_scripts_Ubuntu14.04_server.git
=======
pip install catkin_pkg
pip install empy
pip install pyyaml
pip install rospkg

#ros install
cd ..
git clone https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu14.04_server.git
>>>>>>> e1b3e58bc5f5afba9e42040403ba4190ade51ada
cd ./ros_setup_scripts_Ubuntu14.04_server
bash ./step0.bash
bash ./step1.bash

#catkin setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
source /opt/ros/indigo/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make
