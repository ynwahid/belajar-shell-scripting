# Check if user whether user login or not
read -p "Enter username:" logname

grep "$logname" /etc/passwd > /dev/null
if [ $? -eq 0 ]; then
	echo "Wait..."
else
	echo "User is not found."
	exit 1
fi

(( time=0 ))

while true; do
	who | grep "$logname" > /dev/null
	if [ $? -eq 0 ]; then
		echo "$logname has logged in."
		if [ $time -ne 0 ]; then
			if [ $time -gt 60 ]; then
				minutes=$(( time / 60 ))
				seconds=$(( time % 60 ))
				echo "$logname was $minutes minutes $seconds second(s) late in logging in."
			else
				echo "$logname was $time second(s) late in logging in."
			fi
		fi
		exit
	else
		(( ++time ))
		sleep 1
	fi	
done	
