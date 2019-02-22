#!/bin/bash
echo "Enter line"
read line
echo "Enter file"
read file
echo "Enter line number"
read num
num=`expr $num + 1`
sed -i "${num}i $line" $file