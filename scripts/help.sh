#!/bin/bash

# Main entrypoint
main() {
  echo -e "Available Commands"
  echo -e "------------------\n"

  echo -e "make ros-install"
  echo -e "> Install required dependencies and ROS Noetic full into the local computer.\n"

  echo -e "make ws-setup"
  echo -e "> Used to set up the workspaces by running catkin_make and clone all the required repositories.\n"

  echo -e "make ws-clean"
  echo -e "> Used to clean up the workspaces by removing all cloned repositories and all files generated by catkin_make.\n"

  echo -e "make frame"
  echo -e "> Get the tf frame.\n"

  echo -e "make help"
  echo -e "> Get help when you are lost :)\n"
}

main
