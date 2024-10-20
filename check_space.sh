#!/bin/bash

echo "Disk Usage Overview"
#shows information about the avaliable and used disk space on all mounted
#filesystems
# df disk free
# -h human-readable flag, display sizes in MB,GB etc.
# grep -v tmpfs will take all output and  -v removes any tmpfs (temporary filesystems

df -h | grep -v tmpfs
echo ""


echo "Largest Files in the System"
# Adjust the directory path as needed; '/' means start from root.
# search from root, type file, -exec execute du -h, {} placeholder
#2> redirects standard eror (file descriptor 2) to another location dev/null
#error like permisson denied.
#sort -rh sorts the output
find / -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 10
