#!/bin/bash
echo "Enter file"
read file
echo "Enter regex"
read p
#grep -n "$p" $file
cat $file | grep -n "$p"
