#!/bin/bash

ACTIVE=$(~/.config/polybar/scripts/vpnactive.sh "$1")

if [ $ACTIVE -eq 1 ]; then
	echo "UP"
else
	echo "DN"
fi
