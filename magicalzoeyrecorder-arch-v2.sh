#!/bin/bash
# [ARCH VERSION] magicalzoeyrecorder.sh - screen recorder script with microphone audio too
# screen recorder script with microphone audio too (v2)

# If you don't already have a way to install from the AUR, then
# follow this guide here, to install an AUR helper,
# so you can then use this tool which has deps from the AUR.
# https://gitlab.com/-/snippets/2567376

# License
#
# magicalzoeyrecorder.sh is Free Software: You can use, study share and improve it at your
# will. Specifically you can redistribute and/or modify it under the terms of the
# [GNU General Public License](https://www.gnu.org/licenses/gpl.html) as
# published by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This product is licensed under the GNU GPL v3.0.
# This program is distributed in the hope that it will be useful, 
# but WITHOUT ANY WARRANTY; without even the implied warranty of 
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
#
# See the GNU General Public License (v3.0) for more details. 
# You should have received a copy of the GNU General Public License along with
# this program.  If not, see [https://www.gnu.org/licenses/gpl-3.0.en.html](https://www.gnu.org/licenses/gpl-3.0.en.html). 
#
# THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
# APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS
# AND/OR OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT WARRANTY OF ANY KIND,
# EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE 
# RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU. SHOULD THE
# PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
# REPAIR OR CORRECTION. 

clear
echo "magical zoey recorder"
echo ""
echo "Preparing."
echo ""
echo "yay is required to be installed, if it isn't, follow this guide:"
echo "https://gitlab.com/-/snippets/2567376"
echo ""
read -p "Have you ever ran this software on this system install before (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "" && echo "Starting program." && echo "";
else
  echo "" && echo "Installing requirements." && sudo pacman -S xterm && sudo pacman -S pavucontrol && sudo pacman -S sox && sudo pacman -S libnotify && yay -S gnome-alsamixer && echo "" && echo "Re-run the script again, now." && echo "" && exit;
fi
killall caja
killall st
rm -rf video_project_folder
rmdir video_project_folder

mkdir video_project_folder
cd video_project_folder

rm -rf displayforvideo.mkv
rm -rf audforvid.mkv
rm -rf desktop_game_audio_capture0.wav
rm -rf video_audio_needsaudacity.mp3
rm -rf video_visual_needskdenlive.mkv

pactl unload-module module-loopback
killall pw-loopback
pkill pw-loopback

killall ffmpeg


pactl unload-module module-loopback
killall pw-loopback
pkill pw-loopback

rm -rf displayforvideo.mkv
rm -rf audforvid.mkv
rm -rf desktop_game_audio_capture0.wav
rm -rf desktop_game_audio_capture0.wav*

shopt -s expand_aliases
clear
echo "Okay, let's get started."
sleep 2s
clear
ps -aux | grep limit-pulseaudio-max-volume-to-50-percent.sh | grep -v grep | awk '{ print $2 }' | xargs kill -9
ps -aux | grep limit-pulseaudio-max-volume-to-65-percent.sh | grep -v grep | awk '{ print $2 }' | xargs kill -9
ps -aux | grep warning-sound-if-volume-is-50-percent.sh | grep -v grep | awk '{ print $2 }' | xargs kill -9
ps -aux | grep warning-sound-if-volume-is-65-percent.sh | grep -v grep | awk '{ print $2 }' | xargs kill -9
clear
echo "Open a Terminal with Ctrl+Alt+T, type gnome-alsamixer."
echo "Click the tab for the Headphones you're using, turn its volume for both Speaker and Mic to highest, untick Mute, tick Rec."
echo "Click the tab for the Microphone you're using, turn its volume for and Mic to highest, untick Mute (if there), tick Rec."
echo "then,"
read -p "Press enter to continue."
clear
echo "ENSURE that you have set your default input device in pavucontrol to be to be your main microphone. Mine's a Blue Snowball Mono."
echo ""
echo "(then close pavucontrol)"
echo ""
sleep 1s
sleep 0s && xterm -e sh -c 'pavucontrol' && disown && echo "" > /dev/null 2> /dev/null
clear
echo "ENSURE that you have set your default input device in pavucontrol to be to be your main microphone. Mine's a Blue Snowball Mono."
echo ""
echo "(then close pavucontrol)"
echo ""
read -p "Press enter to start recording!"
clear
echo "GETTING READY. PLEASE WAIT."
echo ""
ps -aux | grep limit-pulseaudio-max-volume-to-50-percent.sh | grep -v grep | awk '{ print $2 }' | xargs kill -9
ps -aux | grep limit-pulseaudio-max-volume-to-65-percent.sh | grep -v grep | awk '{ print $2 }' | xargs kill -9
ps -aux | grep warning-sound-if-volume-is-50-percent.sh | grep -v grep | awk '{ print $2 }' | xargs kill -9
ps -aux | grep warning-sound-if-volume-is-65-percent.sh | grep -v grep | awk '{ print $2 }' | xargs kill -9

sleep 3s

amixer -D pulse sset Master 69%
pactl set-sink-volume @DEFAULT_SINK@ 69%


echo "ENSURE that you have set your default input device in pavucontrol to be to be your main microphone. Mine's a Blue Snowball Mono."
echo ""
echo "(then close pavucontrol)"
echo ""
echo "Press enter to start recording!"

alias gogo="xterm -e sh -c 'ffmpeg -f x11grab -y -framerate 30 -s 3200x1080 -i :0.0 -pix_fmt yuv420p -c:v libx264 -preset superfast -crf 18 displayforvideo.mkv' & xterm -e sh -c 'ffmpeg -f x11grab -y -r 30 -f pulse -i default -pix_fmt yuv420p -c:v libx264 -preset superfast -crf 18 audforvid.mkv' & echo 'command for desktop audio cap goes here'"

# sox -e signed-integer -L -b16 -c2 -r44100 -t raw '|parec -d alsa_output.pci-0000_0c_00.4.iec958-stereo.monitor' -t mp3 -c2 -C 320.01 'desktop_game_audio_capture0.wav

sleep 0s && nohup sox -e signed-integer -L -b16 -c2 -r44100 -t raw '|parec -d alsa_output.usb-GeneralPlus_USB_Audio_Device-00.analog-stereo.monitor' -t mp3 -c2 -C 320.01 'desktop_game_audio_capture0.wav' > /dev/null 2> /dev/null && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown & disown && echo ""
echo ""


clear
sleep 0s && gogo && disown && echo ""
clear
echo "Preparing to start."
sleep 10s
clear
notify-send "Recording started."
sleep 0.3s
notify-send "Press Enter into the terminal that you started with, to stop."
sleep 0.3s
echo "Okay, you're live!"
echo ""
read -p "Press Enter into THIS TERMINAL WINDOW when you've done recording."
clear
notify-send "Finishing up. Dont move."
echo "Finishing up. Don't move."
sleep 26s
killall -2 st
killall -2 st
killall -9 st
killall -2 sox
killall -9 sox

ffmpeg -i audforvid.mkv video_audio_needsaudacity.mp3

ffmpeg -y -i displayforvideo.mkv -filter:v "crop=1920:1080:1280:0" video_visual_needskdenlive.mkv



killall ffmpeg


pactl unload-module module-loopback
killall pw-loopback
pkill pw-loopback

rm -rf displayforvideo.mkv
rm -rf audforvid.mkv

cp -rf video_audio_needsaudacity.mp3 microphone_audio_capture0.mp3
cp -rf video_visual_needskdenlive.mkv monitor_video_capture0.mkv

rm -rf video_audio_needsaudacity.mp3
rm -rf video_visual_needskdenlive.mkv

caja $(pwd)
clear
notify-send "Recording is finished."
echo "Recording is finished. The video and the audio are saved in $(pwd) which was opened for your convenience."
echo "Program stops."




#EOF



