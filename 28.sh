#!/bin/bash
var=$1
if [ $var -lt 10 ]; then
    for (( i=1; i<=10; i++ ))
    do
        echo "$var*$i="`expr $var \* $i`
    done  
elif [ $var -gt 9 ]; then
    for (( i=0; i<5; i++ ))
    do
        echo "INDIA"
    done
fi
