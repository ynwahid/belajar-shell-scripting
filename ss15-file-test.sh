# File test
echo "Enter a name:\c"
read fname
if [ -f $fname ]; then
	echo "You indeed entered a file name."
elif [ -d $fname ]; then
	echo "You indeed entered a directory name."
elif [ -s $fname]; then
	echo "The size of the file is greater than zero."
else
	echo "Don't provide me crazy input."
fi
