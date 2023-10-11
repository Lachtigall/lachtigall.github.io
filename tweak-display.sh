#!/bin/bash
# tweak-display.sh
clear
echo "tweak-display.sh"
echo ""
echo "If prompted, enter your password to begin."
sudo echo "Installing dependency..."
echo ""
sudo dnf install ddcutil
sudo dnf remove -y redshift
sudo dnf remove -y redshift-gtk
killall redshift
killall redshift-gtk
pkill redshift
pkill redshift-gtk
echo ""

echo "Displaying current info about display."

echo ""
# sense brightness
sudo ddcutil -d 1 getvcp 10 | grep -v Unsupported

echo ""
# sense contrast
sudo ddcutil -d 1 getvcp 12 | grep -v Unsupported

echo ""
# sense color preset
sudo ddcutil -d 1 getvcp 14 | grep -v Unsupported

echo ""

echo "Tweaking display."
echo ""

# setting brightness
sudo ddcutil -d 1 setvcp -- 10 "100"

# setting contrast
sudo ddcutil -d 1 setvcp -- 12 "50"

# setting color mode
sudo ddcutil -d 1 setvcp -- 14 "0x01"

echo "New settings:"

echo ""
# sense brightness
sudo ddcutil -d 1 getvcp 10 | grep -v Unsupported

echo ""
# sense contrast
sudo ddcutil -d 1 getvcp 12 | grep -v Unsupported

echo ""
# sense color preset
sudo ddcutil -d 1 getvcp 14 | grep -v Unsupported

echo ""

echo "All done! Have fun!"
echo ""