#from littlefs import lfs

from littlefs import LittleFS

# Initialize the File System according to your specifications
fs = LittleFS(block_size=512, block_count= 131072)


#can uncomment these block's for device tree and paritions

#boot = open("BOOT.BIN", mode="rb")
#boot_data = boot.read()

#with fs.open('BOOT.bin', 'wb') as fh:
    #fh.write(boot_data)


#dtb = open("system.dtb", mode ="rb")
#dtb_data = dtb.read()

#with fs.open('system.dtb', 'wb') as fh:
    #fh.write(dtb_data)

# Open a file and write some content
with fs.open('first-file.txt', 'w') as fh:
    fh.write('Some text to begin with\n')

with fs.open('hello_there', 'w') as fh:
    fh.write('My data has not been changed yet\n')

with fs.open('boot_count', 'wb') as fh:
    fh.write(b'\x00')
# Dump the filesystem content to a file
with open('sd.img', 'wb') as fh:
    fh.write(fs.context.buffer)