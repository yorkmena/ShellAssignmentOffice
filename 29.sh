#!/bin/bash
echo "Enter name"
read name
printName(){
    i=0;
    while [ $i -lt $2 ]
    do
        echo "Name is: "$name; i=`expr $i + 1`
    done
}
printName $name "5"