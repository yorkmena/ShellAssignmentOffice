#!/bin/bash
echo "Enter name of file:"
read name
# Check if file exists
[ -f $name ] && echo "file already exists with this name"; exit 0 || echo "Creating file" ; touch $nameS
