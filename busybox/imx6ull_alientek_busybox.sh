#!/bin/bash

# Set default value, use the default path if the first positional argument is empty
CONFIG_PREFIX=${1:-"~/linux/nfs/rootfs"}

# Check if the positional argument is empty
if [ $# -eq 0 ]; then
    echo "Error: Please provide the target directory path as an argument"
    echo "Usage: $0 <directory_path>"
    echo "Example: $0 ~/linux/nfs/rootfs"
    exit 1
fi

# Check if the directory exists
if [ ! -d "$CONFIG_PREFIX" ]; then
    echo "Error: Directory '$CONFIG_PREFIX' does not exist"
    echo "Please provide a valid directory path"
    exit 1
fi

rm $CONFIG_PREFIX -rf
mkdir -p $CONFIG_PREFIX

# Execute the compilation commands
echo "Configuring the kernel..."
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- alientek_defconfig

echo "Compiling and installing to directory: $CONFIG_PREFIX"
make  ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- install CONFIG_PREFIX="$CONFIG_PREFIX" -j$(nproc)

echo "Installation completed!"
