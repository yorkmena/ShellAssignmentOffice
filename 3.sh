#!/bin/bash
echo "specify file name:"
read file
echo "specify the number of lines"
read num

echo "Top $num lines are: "

cat $file | sort | head -$num
