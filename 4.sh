echo "Enter the directory path"
read var
cd $var;ls -ltrh | awk '{print $5,$9}'
