#!/bin/bash
echo "Enter file name:"
read file
echo "Enter line number to delete"
read num
sed -i "$num"d $file
