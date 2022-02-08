# Rename a file to file.username
# where username is the login name of the user executing the script
name=$1
set `whoami`
mv $name $name.$1
