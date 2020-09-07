#!/usr/bin/env bash

go_to_sleep() {
    blueutil --power off
    echo "Shutting down Bluetooth"
    networksetup -setairportpower en0 off
    echo "Shutting down WiFi"
    echo "Sleeping..."
    pmset sleepnow
}

wake_up_radio() {
    blueutil --power on
    echo "Power on Bluetooth"
    networksetup -setairportpower en0 on
    echo "Power on WiFi"
}

print_status() {
	BT=$(blueutil --power)
	if [ $BT == 1 ]
	then
		echo "Bluetooth is ON"
	else
		echo "Bluetooth is OFF"
	fi
	networksetup -getairportpower en0
}

case $1 in
	sleep)
		go_to_sleep
		;;
	wake)
		wake_up_radio
		;;
	status)
		print_status
		;;
	*)
		echo "Usage: amimir (sleep|wake|status)"
		exit 1
esac


