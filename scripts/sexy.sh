#!/bin/bash
while :
do
	echo "Anonimbus" > /root/king.txt
	./dev/shm/chattr +iae /root/king.txt
	sleep 0.5
done
