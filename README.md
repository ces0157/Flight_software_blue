# README for NASA Flight Software Blue team.
Provided above are all files for the Spring 2024 Senior Design Team. We have intergrated and built FreeRTOS with the Xilinx SDK and [LittleFS](https://github.com/littlefs-project/littlefs) to be tested through [QEMU](https://www.qemu.org/). Throughout this Document we will discuss how to interact with the files in the repository and any addtional nesseccary documentation to get you started up quickly. We are excited you are taking a look at the cool work we have done this semester!


# Prequistie Installations
In order to build everything in this repository you are going to need a view things first.
1. Install [VITIS Classic 2023.2](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis.html), which has only been tested on Windows
2. Install [WSL 2.0](https://learn.microsoft.com/en-us/windows/wsl/install) or use a classic linux machine sepeate from your environement
3. Install [python](https://www.python.org/downloads/) either on your wsl or linux
4. Install [conda](https://conda.io/projects/conda/en/latest/user-guide/install/index.html) or alternativley use the python virrtual enviroment (conda is reccomended though)
5. Install [QEMU](https://www.qemu.org/) on WSL or linux
6. Install CMAKE and a gcc compiler on your WSL and/or linux machine
7. GDB-multiarch for debugging

## FILE Layout
- The "project folder" contains all the code used for this build. We will come back to this in a moment, but this is really only used for quick interaction with the code. For actually building and making changes, please use the "vitis_export_archive.ide"
- The "format.py" is a python script that will format a virtual SD partition (must be run in a virtual environment)
- The "RTOS_DEMO.elf" file is the most recent Board executable containing FreeRTOS, LittleFS, and the board support package. This will be used with QEMU emulation
- The "system.dtb" is a device tree of the AVNET Ultra96-v2 Zynq Ultrascale+ ZU3EG Development board, use for QEMU emulation
- The "sd.img" is the virtual SD card.
- The "q-run.sh" is a bashscript that will run QEMU emulating the target board (assuming you have the .elf or executable file)
- The "vitis_export_arhive.ide.zip" is the most important part of this whole repository. It contains all the code and support to be used within the Xilinix/ Vitis platform. If you want to make any modification to the code this is the file you want to use. But don't worry we will show you how to set it up!

## Quick Start
If you don't care about the project files and just want to run, then this is the section for you. All you need is the sd card, RTOS_DEMO.elf, the device tree, and the bash script.
1. In a WSL or linux terminal run:
`$bash q-run.sh`
2. You will be prompted to enter a file location of your .elf file, enter the path to it.
3. After this run you should see a qemu window pop open, which mean's the hardware is being emulated running!
4. If you want to test the actual exectuable file code run :
`$gdb-multiarch RTOS_DEMO.elf`
5. This will open a new GDB session. However we are not connected to the actual hardware yet, run:
   `$target remote localhost:1234`
6. If succesfull you should see something along the lines of vector table <0,0,0,0....0>
7. Now you can operate within GDB and test the code (our current test code is in main function. In the documentation section of this repository, there is a more detailed description on testing your code.

## Modifying and Building
Like I said before. The best way to make changes to the code is to use the "vitis_export_arhive.ide.zip", the platform code provided in the github is nothing more than a quick way to look at current code sturucutre.
1. Once you have this file downloaded, open Vits Classic 2023.2
2. Once this is open select a workspace for your new project
3. Go to File -> import -> Vitis project exported zip file
4. Clik next
5. Select the "vitis_export_arhive.ide.zip" as the zip file
6. The project and system files should load, ensure you have selected all of them.
7. You should now see all files to the left of your screen for this project.
8. Go to Project -> Build All if you want to build everything.
9. Once the project has been built you will find the .elf file in RTOS_DEMO -> Binaries -> RTOS_DEMO.elf
10. You can also find the BOOT.BIN file, which will be nesscarry for the real SD Card in RTOS_DEMO_system -> sd_card -> BOOT.BIN

