# Break statement
(( count=1 ))
while [ $count -le 10 ]; do
	if [ $count -eq 6 ]; then
		break
	fi

	echo $count
	(( count++ ))
done

echo "We are out of the loop"
