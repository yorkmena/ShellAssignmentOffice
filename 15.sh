#!/bin/bash
echo "enter source folder"
read source
source=$(realpath "$source")/
echo "Enter target folder"
read target
rsync -avz --delete "$source" "$target"