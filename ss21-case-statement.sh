# Case Statement
echo "Enter a character:\c"
read var
case "${var}" in
	[a-z])
		echo "You entered a lowercase alphabet.";;
	[A-Z])
		echo "You entered a uppercase alphabet.";;
	[0-9])
		echo "You entered digit.";;
	?)
		echo "You entered a special symbol.";;
	*)
		echo "You entered more than a character.";;
esac
