#!/bin/bash
echo "Enter file"
read file
if [ ! -f $file ]; then
echo "file does not exist"
exit 1
fi

echo "Enter patternFrom"
read patternFrom
echo "Enter patternTo"
read patternTo
#echo "replacing content"

sed -i "s/$patternFrom/$patternTo/g" "$file"
if [ $? == 0 ];then
echo "Content replaced!!"
fi