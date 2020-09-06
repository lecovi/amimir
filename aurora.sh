#!/usr/bin/env bash

blueutil --power 0
echo "Shutting down Bluetooth"
networksetup -setairportpower en0 off
echo "Shutting down WiFi"
echo "Sleeping..."
pmset sleepnow
