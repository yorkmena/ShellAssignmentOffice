#!/bin/bash
echo "Enter line"
read line
echo "Enter file"
read file
echo "$line" >> "$file"