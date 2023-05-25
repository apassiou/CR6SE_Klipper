#!/bin/sh

#Put this script into root crontab
#sudo crontab -e
#@reboot /home/pi/auto_shutdown.sh <-- change directory as appropriate
#NOTE: This simply checks if /dev/ttyUSB0 is present, if printer is powered off it wont be. If thats the case raspberry pi shuts down.
#NOTE: Checks are done every 15 minutes (after initial 15 minute timeout). Adjust below as desired.
#NOTE: If your pi is connected to CR6SE via another means, this will need to be modified to work

sleep 15m
while true
do
  if [ -e /dev/ttyUSB0 ]; then
    printf "Printer is On/n"
    sleep 15m
  else
    printf "Printer is Off, Turning Off/n"
    wall "Printer OFF"
    sleep 10s
    sudo shutdown now
  fi
done
