# Spot Workspace

A workspace for SPOT robot in SpotSim-MR project. This workspace is based on [YouTube tutorial](https://www.youtube.com/watch?v=C9quuhNuWIM) and [chvmp/champ repository](https://github.com/chvmp/champ). This repository is aimed to automate the ROS installation and workspace setup to increase work efficiency.

## Team

1. Andy Ho Ming Moy

2. Arvin Lee

3. Sofya Filippova

4. Ryan Charles Betts

## Compatibility

| Index | ROS    | Tested | Status  | OS             | Kernel            |
| ----- | ------ | ------ | ------- | -------------- | ----------------- |
| 1     | Noetic | yes    | success | Ubuntu:22.04.5 | 5.15.0-52-generic |

## Dependencies

| Index | Dependency                                                                  |
| ----- | --------------------------------------------------------------------------- |
| 1     | [PranshuTople/champ](https://github.com/PranshuTople/champ.git)             |
| 2     | [chvmp/champ_teleop](https://github.com/chvmp/champ_teleop.git)             |
| 3     | [chvmp/robots](https://github.com/chvmp/robots.git)                         |
| 4     | [chvmp/spot_ros](https://github.com/chvmp/spot_ros.git)                     |
| 5     | [SpotSim-MR/spot_controller](git@github.com:SpotSim-MR/spot_controller.git) |
| 6     | [SpotSim-MR/spotsim_og](git@github.com:SpotSim-MR/spotsim_og.git)           |

## Instruction

### ROS Installation

ROS installation is the first step. It provides the toolkit and environment to develop ROS. It can be done by running the script inside this repository. The script can be run anywhere, inside or outside the workspace.

```shell
# Path: <workspace>/scripts/ros_install.sh
./scripts/ros_install.sh
```

The other way is to run the Makefile in the workspace root.

```shell
# Path: <workspace>/Makefile
make ros-install
```

The full installation tutorial can be viewed in ROS's [official website](http://wiki.ros.org/noetic/Installation/Ubuntu). ROS also provides [official tutorials](http://wiki.ros.org/ROS/Tutorials).

### Workspace Setup

The workspace is empty at the first glance. By empty, this repository does not represent a ROS workspace which is supposed to have `build`, `devels`, and `src` folders. Obviously, there are also no dependencies required by SPOT.

To set up the workspace. It can be done by running the setup script.

```shell
# Path: <workspace>/scripts/workspace_setup.sh
./scripts/workspace_setup.sh
```

The workspace setup also can be done through Makefile, which runs similarly the `workspace_setup.sh` but in a more elegant manner.

```shell
# Path: <workspace>/Makefile
make ws-setup
```

### Workspace Clean

To clean the workspace. It can be done simply by running the clean script.

```shell
# Path: <workspace>/scripts/workspace_clean.sh
./scripts/workspace_clean.sh
```

The cleaning can also be done through the Makefile.

```shell
# Path: <workspace>/Makefile
make ws-clean
```
