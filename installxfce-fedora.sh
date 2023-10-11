#!/bin/bash

# Install Xfce4 Desktop on Fedora

echo "Working..."

sudo dnf autoremove -y && sudo dnf check -y && sudo dnf upgrade -y && sudo dnf distro-sync -y && sudo dnf autoremove -y && sudo dnf check -y

sudo dnf install -y sddm
sudo systemctl enable sddm
sudo dnf group install -y xfce
sudo dnf group install -y "Xfce Desktop"

sudo dnf autoremove -y && sudo dnf check -y && sudo dnf upgrade -y && sudo dnf distro-sync -y && sudo dnf autoremove -y && sudo dnf check -y

echo "Done."
echo ""
echo "Rebooting in 5, here's hoping."
echo ""
sleep 5s
sudo reboot now
