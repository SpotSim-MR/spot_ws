#!/bin/bash

###### ROS INSTALL
# Used to install ROS Noetic
#
# Author: nivratig
# Source: https://wiki.ros.org/noetic/Installation/Ubuntu

# Get current shell
DEFAULT_SHELL= basename $SHELL

PATH_ROS=/opt/ros/noetic

# Formatted log
log() {
  DATE="[`date +"%T"]` $1"
  echo "$DATE"
}

# Install the required dependencies for pre-setup
getDeps() {
  sudo apt install curl git lsb-release
}

# Add ROS Noetic repository to sources list
getSourceList() {
	sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
	curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
	sudo apt update
}

# Install Noetic full packages
# NOTE: Not everything, some packages still need to be installed manually
installRos() {
	sudo apt install ros-noetic-desktop-full
}

# Install ROS build packages
installBuildPack() {
	sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
	sudo rosdep init
	rosdep update
}

# Main entrypoint
main() {
  log "Get required dependencies..."
  getDeps
  log "Get source list from ROS repo..."
  getSourceList
  log "Install ROS..."
  installRos
  log "Sourcing setup.<your shell>..."
  setSource
  log "Install build packages..."
  installBuildPack

  log "Finished"
  if [[ "$DEFAULT_SHELL" == "bash" ]]; then
	  log "Please add this to $HOME/.bashrc and source the .bashrc file:"
	  log "source $PATH_ROS/setup.bash"
  elif [[ "$DEFAULT_SHELL" == "zsh" ]]; then
	  log "Please add this to $HOME/.zshrc and source the .zshrc file:"
	  log "source $PATH_ROS/setup.zsh"
  else
	  log "Please run the following line:"
	  log "source $PATH_ROS/setup.sh"
  fi
}

main
