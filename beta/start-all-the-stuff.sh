#!/bin/bash
# start-all-the-stuff.sh v7
cd "$(dirname "$0")"

clear
sleep 0.166s
# ---
echo "start-all-the-stuff.sh"
echo ""
sleep 0.166s
echo "[STARTED] Starting all the stuff..."
sleep 0.166s


# +Start of apps

# fix dupe bug
killall Discord
pkill Discord

# Firefox
sleep 0s && nohup firefox && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown & disown && echo ""

# Skype
sleep 0s && nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/skype --file-forwarding com.skype.Client @@u %U @@ && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown & disown && echo ""

# FeedReader
sleep 0s && nohup env BAMF_DESKTOP_FILE_HINT=/var/lib/snapd/desktop/applications/feedreader_feedreader.desktop /var/lib/snapd/snap/bin/feedreader %U && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown & disown && echo ""

# Element
sleep 0s && nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/element --file-forwarding im.riot.Riot @@u %U @@ && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown & disown && echo ""

# Gajim
sleep 0s && nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=gajim --file-forwarding org.gajim.Gajim @@u %u @@ && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown & disown && echo ""

# Steam
sleep 0s && nohup steam && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown & disown && echo ""

# Telegram
sleep 0s && nohup telegram-desktop && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown & disown && echo ""

# xfce4-appfinder
sleep 0s && nohup xfce4-appfinder && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown & disown && echo ""

# Discord
sleep 0s && nohup /usr/bin/discord && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown & disown && echo ""

# /End of apps


# Cleanup
sleep 0s && nohup echo "" && rm -rf $HOME/nohup.out && rm -rf $(pwd)/nohup.out && rm -rf /opt/nohup.out && disown & disown
rm -rf /opt/nohup.out
rm -rf $HOME/nohup.out
rm -rf $(pwd)/nohup.out

# MULTIPROCESS POWERRR!
echo ""
echo "MULTIPROCESS POWERRR!"
echo ""
sleep 0.166s
echo ""
sleep 0.166s
# Exit the script after all the progs have finished starting to launch
echo "[WORKING, PLEASE WAIT] Almost done starting all the stuff..."
echo "[loading...]"
echo ""
# Make this delay long enough that the terminal exits after all the progs have done launching
# Else you do not return to the prompt and it hangs
sleep 38s
echo ""
echo "[FINISHED] Done!"
echo "!!!"
echo ""
# ---
sleep 0.166s
exit


