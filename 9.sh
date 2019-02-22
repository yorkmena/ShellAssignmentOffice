echo "Enter line"
read line
echo "Enter file"
read file
grep -q -w "^$line$" "$file" || echo "$line" >> "$file"