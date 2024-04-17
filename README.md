# README for NASA Flight Software Blue team.
Provided above are all files for the Spring 2024 Senior Design Team. We have intergrated and built FreeRTOS with the Xilinx SDK and (LittleFS)[https://github.com/littlefs-project/littlefs] to be tested through (QEMU)[https://www.qemu.org/]. Throughout this Document we will discuss how to interact with the files in the repository and any addtional nesseccary documentation to get you started up qucily. We are excited you are taking a look at the cool work we have done this semester!


# Prequistie Installations
In order to build everything in this repository you are going to need a view things first.
1. Install [VITIS Classic 2023.2](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis.html), which has only been tested on Windows
2. Install [WSL 2.0](https://learn.microsoft.com/en-us/windows/wsl/install) or use a classic linux machine sepeate from your environement
3. Install [python](https://www.python.org/downloads/) either on your wsl or linux
4. Install [conda](https://conda.io/projects/conda/en/latest/user-guide/install/index.html) or alternativley use the python virrtual enviroment (conda is reccomended though)
5. Install CMAKE and a gcc compiler on your WSL and/or linux machine
6. GDB-multiarch for debugging

## FILE Layout
- The "project folder" contains all the code used for this build. We will come back to this in a moment, but this is really only used for quick interaction with the code. For actually building and making changes, please use the "vitis_export_archive.ide"
- The "format.py" is a python script that will format a virtual SD partition (must be run in a virtual environment)
- The "RTOS_DEMO.elf" file is the most recent Board executable containing FreeRTOS, LittleFS, and the board support package. This will be used with QEMU emulation
- The "system.dtb" is a device tree of the AVNET Ultra96-v2 Zynq Ultrascale+ ZU3EG Development board, use for QEMU emulation
- The "sd.img" is the virtual SD card.
- The "q-run.sh" is a bashscript that will run QEMU emulating the target board (assuming you have the .elf or executable file)
- The "vitis_export_arhive.ide" is the most important part of this whole repository. It contains all the code and support to be used within the Xilinix/ Vitis platform. If you want to make any modification to the code this is the file you want to use. But don't worry we will show you how to set it up!

## Quick Start
If you don't care about the project files and just want to run, then this is the section for you. All you need is the sd card, RTOS_DEMO.elf, the device tree, and the bash script 

