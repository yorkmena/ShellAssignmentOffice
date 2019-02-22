#!/bin/bash
echo "Enter file to remove"
read file
rm $file
if [ $? == 0 ]; then
echo "File deleted"
else
echo "File is not deleted"
fi