#!/bin/bash
echo "Enter name of dir"
read dir
echo "enter target"
read target
mkdir $(realpath "$target")/$dir