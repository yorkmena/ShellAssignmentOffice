#!/bin/bash

var1=$1
var2=$2
var3=$3
var4=$4
var5=$5

echo "First argumment is: "$1
echo "second argumment is: "$5

if [ $2 == 10 ]; then
    echo "INDIA"
else
    echo "india"
fi
echo "Addition of all arguments is: " `expr $1 + $2 + $3 + $4 + $5`