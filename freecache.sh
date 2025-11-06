#!/bin/bash

# Check root user
if [[ $(id -u) -ne 0  ]];then
        echo "Please execute as root"
        exit 1
fi

# Display, clear and display again memory usage
free && sync && echo 3 > /proc/sys/vm/drop_caches && free
