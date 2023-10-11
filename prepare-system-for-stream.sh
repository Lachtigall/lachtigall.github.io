#!/bin/bash
# prepare-system-for-stream.sh

# automatically kill processes that i don't want open while streaming,
#   so that starting a stream becomes easier, less barriers to starting.


clear
echo ""
echo "1: Killing processes that would be annoying during a stream..."
echo ""
sleep 0.7s

killall skype
killall skypeforlinux

killall telegram
killall telegram-desktop

killall wire
killall wire-desktop

killall steam

killall dino
killall dino-im

killall variety
killall varietywalls

ps -aux | grep talking-clock | grep -v grep | awk '{ print $2 }' | xargs kill -9

ps -aux | grep alarm-clock | grep -v grep | awk '{ print $2 }' | xargs kill -9

ps -aux | grep bedtime-reminder | grep -v grep | awk '{ print $2 }' | xargs kill -9

ps -aux | grep alert | grep -v grep | awk '{ print $2 }' | xargs kill -9

echo ""
echo "2: All done! Get streaming!"
echo ""

sleep 0.7s
clear
echo ""
echo "1: Killing processes that would be annoying during a stream..."
echo ""
echo "2: All done! Get streaming!"
echo ""
sleep 0.4s

# eof
