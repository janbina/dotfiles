#!/bin/bash

LINES=$(nmcli con show --active | grep "$1" | grep vpn | wc -l)

if [ $LINES -eq 1 ]; then
	echo 1
else
	echo 0
fi
