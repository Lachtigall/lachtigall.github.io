#!/bin/bash
# attention-script.sh

clear

read -p "What do you want to focus on? " TASKNAME

TASKNAME="$TASKNAME"

notify-send --urgency "Normal" --app-name "Attention - todo:" --icon /usr/share/icons/Adwaita/256x256/legacy/dialog-warning.png --expire-time 429496729 "$TASKNAME"
clear
echo "todo: $TASKNAME"
sleep 60s
while true;
do

sleep 60s


notify-send --urgency "Normal" --app-name "Attention - todo:" --icon /usr/share/icons/Adwaita/256x256/legacy/dialog-warning.png --expire-time 429496729 "$TASKNAME"


sleep 60s

done


