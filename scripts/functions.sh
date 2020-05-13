#!/bin/bash

function command(){
	xte "str $1"
	sleep 0.5
	xte "key Return"
}

function ctrl(){
	xte "keydown Control_L" "key $1" "keyup Control_L"
}

function hide_guake(){
	xte "keydown Control_L" "keydown Alt_L" "keydown A" "keyup A" "keyup Alt_L" "keyup Control_L"
	sleep 0.5
}

function alt_tab(){
	xte "keydown Alt_L" "keydown Tab" "keyup Alt_L" "keyup Tab"
	sleep 0.5
}

#IP="127.0.0.1"
IP=$(ip -4 addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' --color=none)
