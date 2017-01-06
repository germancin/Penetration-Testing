#!/bin/bash

echo "putting down the interface"
ifconfig wlan0 down
echo "setting up interface in mode monitor"
iwconfig wlan0 mode monitor
iwconfig
echo "starting airmon-ng start wlan0"
airmon-ng start wlan0
ifconfig
echo "Kill the process to avoid interference - airmon-ng check kill"
airmon-ng check kill
