#!/bin/bash
echo "Please enter file path to RTOSDemo.elf from current directory. (Ex: /folder1/FreeRTOS/RTOSDemo.elf)"
read path
echo $path
qemu-system-aarch64 -M xlnx-zcu102 -serial mon:stdio -m 4G -dtb system.dtb -device loader,file=$path,cpu-num=1 -drive file=sd.img,if=sd,format=raw,index=0  -semihosting -semihosting-config enable=on,target=native -s -S -machine secure=on
