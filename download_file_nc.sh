#!/bin/bash

source "/root/git/koth/scripts/functions.sh"

PORT=$(($RANDOM+3000))
TARGET_IP=$1

if [[ $TARGET_IP == '' ]]; then
	echo "target ip ; filename"
	exit
fi

filename=$(basename $2)
hide_guake
command "nc -w 0 -lnvp $PORT < $2"
sleep 0.5
nc $TARGET_IP $PORT > $filename & 
