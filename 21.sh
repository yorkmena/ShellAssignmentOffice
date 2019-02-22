#!/bin/bash
echo "Enter dir"
read dir
if [ -d $dir ]; then
echo "dir exists"
else
echo "dir does not exist"
fi