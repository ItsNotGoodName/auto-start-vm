#!/bin/sh
# Starts VM if no display cables are connected to host.
# Tested to work on Arch Linux.
# Credit: https://stackoverflow.com/a/47964800

if [ -z "$1" ]
then
	echo "No VM name supplied."
	exit 1
fi

output_status=$(cat /sys/class/drm/card0/card0*/status | grep '^connected')

if [ -z "$output_status" ]
then
		echo "Starting $1"
		/usr/bin/virsh start "$1"
		exit 0
fi

echo "Display connected, not starting $1."
