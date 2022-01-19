#!/bin/bash

BATS=("BAT0" "BAT1")

TOTAL_FULL=0
TOTAL_NOW=0

for BAT in "${BATS[@]}"
do
    STAT="$(cat /sys/class/power_supply/"$BAT"/uevent)"
    FULL="$(echo "$STAT" | grep "ENERGY_FULL=" | cut -d "=" -f2)"
    NOW="$(echo "$STAT" | grep "ENERGY_NOW=" | cut -d "=" -f2)"
    ((TOTAL_FULL += FULL))
    ((TOTAL_NOW += NOW))
done

POWER="$(cat /sys/class/power_supply/AC/uevent | grep "SUPPLY_ONLINE=" | cut -d "=" -f2)"

PERC=$((100 * $TOTAL_NOW / $TOTAL_FULL))

STAT='-'

if [ $POWER -eq 1 ]; then STAT='+'; fi

if [ $PERC -gt 97 ]; then
    echo "full"
else
    echo "$PERC$STAT"
fi
