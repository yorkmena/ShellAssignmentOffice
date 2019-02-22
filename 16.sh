#!/bin/bash
echo "enter file name"
read file
echo "enter source folder"
read source
echo "Enter target folder"
read target
source=$(realpath "$source")/$file
mv $source $target