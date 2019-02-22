#!/bin/bash
echo "Specify Pattern:  "
read p
#p="*.sh"
find . -maxdepth 1 -name "$p"