#!/bin/bash
echo "Enter directory"
read dir
if [ ! -d $dir ]; then
echo "dir does not exist"
exit 1
fi
echo "Number of days"
read n
d=$(realpath $dir)
find "$d"/* -maxdepth 0 -type f -mtime +"$n"