all:

run:

ros-install:
	bash ./scripts/ros_install.sh

ws-setup:
	bash ./scripts/workspace_setup.sh

ws-clean:
	bash ./scripts/workspace_clean.sh

frame:
	rosrun tf2_tools view_frames.py

help:
	bash ./scripts/help.sh

