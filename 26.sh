#!/bin/bash
echo "Enter target folder"
read dir
if [ ! -d $dir ]; then
echo "Folder does not exist"
exit 1
fi
echo "Enter what is to be replace"
read what
echo "Enter replacement"
read replace
cd $dir;
find ./ -maxdepth 1 -type f -exec sed -i "s/$what/$replace/g" {} \;