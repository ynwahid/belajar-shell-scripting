# For loop in action
for item in *; do
	if [ -f $item ]; then
		echo $item is file
	fi
done
