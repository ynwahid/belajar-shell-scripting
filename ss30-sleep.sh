# Sleep in action
read -p "Enter a sentence:" str
for word in $str; do
	echo $word
	sleep 1
done 
