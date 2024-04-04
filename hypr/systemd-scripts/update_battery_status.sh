#!/bin/bash

while true; do
	export BATTERY_PERCENTAGE="$(acpi | grep -o [0-9]*%)"
	sleep 10
done
