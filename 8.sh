#!/bin/bash
echo "specify file name:"
read file
echo "Number of lines: "
wc -l $file | awk '{print $1}'
