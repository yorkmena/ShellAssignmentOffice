#!/bin/bash
echo "Enter target folder"
read dir
if [ ! -d $dir ]; then
echo "Folder does not exist"
exit 1
fi
echo "Number of days"
read n
d=$(realpath $dir)
find "$d"/* -maxdepth 0 -type d -mtime +"$n" -exec rm -rf {} \;
