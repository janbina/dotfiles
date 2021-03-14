#!/bin/bash

ACTIVE=$(~/.config/polybar/scripts/vpnactive.sh "$1")

if [ $ACTIVE -eq 1 ]; then
	nmcli con down $1
else
	nmcli con up $1
fi
