#!/bin/bash
echo "Enter dir to remove"
read dir
rm -rf $dir
if [ $? == 0 ]; then
echo "dir deleted"
else
echo "dir not deleted"
fi