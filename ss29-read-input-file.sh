# Read input from a file
read -p "Enter a file name:" fname
if [ -z "$fname" ]; then
	exit
fi

terminal=$(tty)

exec < $fname

count=1

while read line; do
	echo $count.$line
	(( count++ ))
done

exec < $terminal 
