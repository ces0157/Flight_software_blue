# README for NASA Flight Software Blue team.
Provided above are all files for the Spring 2024 Senior Design Team. We have intergrated and built FreeRTOS with the Xilinx SDK and (LittleFS)[https://github.com/littlefs-project/littlefs] to be tested through (QEMU)[https://www.qemu.org/]. Throughout this Document we will discuss how to interact with the files in the repository and any addtional nesseccary documentation to get you started up qucily. We are excited you are taking a look at the cool work we have done this semester!


# Prequistie Installations
In order to build everything in this repository you are going to need a view things first.
1. Install (VITIS Classic 2023.2)[https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis.html], which has only been tested on Windows
2. Install (WSL 2.0)[https://learn.microsoft.com/en-us/windows/wsl/install] or use a classic linux machine sepeate from your environement
3. Install (python)[https://www.python.org/downloads/] either on your wsl or linux
4. Install (conda)[https://conda.io/projects/conda/en/latest/user-guide/install/index.html or alternativley use the python virrtual enviroment (conda is reccomended though)
5. Install CMAKE and a gcc compiler on your WSL and/or linux machine

## FILE Layout
- The "project folder" contains all the code used for this build. We will come back to this in a moment, but this is really only used for quick interance with the code. For actually building and making changes, please use the 
