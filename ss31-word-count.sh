# Word counter
read -p "Enter a filename:" fname

terminal=$(tty)

exec < $fname

nol=0
now=0

while read line; do
	(( nol++ ))
	for word in $line; do
		(( now++ ))
	done
done

echo "Number of lines: $nol"
echo "Number of words: $now"
