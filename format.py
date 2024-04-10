#from littlefs import lfs

from littlefs import LittleFS

# Initialize the File System according to your specifications
fs = LittleFS(block_size=512, block_count= 131072)


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

# Dump the filesystem content to a file
with open('sd.img', 'wb') as fh:
    fh.write(fs.context.buffer)