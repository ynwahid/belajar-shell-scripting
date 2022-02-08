# Continue statement
(( count=0 ))
while [ $count -le 9 ]; do
	(( count++ ))
	if [ $count -eq 5 ]; then
		echo "skipping $count"
		continue
	fi
	echo $count
done

echo "We are out of the loop now."
