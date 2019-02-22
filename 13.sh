#!/bin/bash
echo "enter file"
read file
echo "Enter line number"
read num
sed -n "$num"p $file