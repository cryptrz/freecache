Read me for curious people: 

    free:
        This command displays current memory usage, including total, used, free, shared, buffered and cached memory.
        It helps to understand how much memory is being used before making any changes.
    sync :
        The sync command is used to clear file system buffers. This means it writes any data still in memory (dirty pages) to disk.
        This step ensures that all changes are saved before the caches are emptied, thus avoiding any loss of data.
    echo 3 > /proc/sys/vm/drop_caches :
        This command instructs the Linux kernel to remove various caches from memory.
        The value 3 indicates that the system should clear :
            Page cache (cached files)
            Dentries (directory entries)
            inodes (file metadata)
        Writing to /proc/sys/vm/drop_caches requires root privileges, so it may be necessary to prefix it with sudo in practice.
    free (again) :
        Finally, this command is executed again to display updated memory usage after caches have been cleared.
        This allows users to see the effect of previous commands on memory usage.

Source: https://cryptrz.org/wordpress/2024/10/15/comment-automatiser-le-vidage-de-cache-sous-linux/ 
