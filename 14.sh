#!/bin/bash
echo "enter file"
read file
echo "Enter line number"
read num
echo "word to extract"
read word
sed -n "$num"p $file | awk -v n=$word '{print $n}'
