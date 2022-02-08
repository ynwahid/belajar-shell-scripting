# This file takes a file name as an argument and rename it.
echo "Provide a file name"
read name
mv $1 $name
cat $name
