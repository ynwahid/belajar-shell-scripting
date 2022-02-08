# Copy man of commands to file
for cmd in $(cat commandlist); do
	man $cmd >> helpfile
done
