#!/bin/bash
# forcefully remove gnome from fedora, regardless of the cost (untested, do not use)

echo "Working..."
sudo dnf autoremove -y && sudo dnf check -y && sudo dnf upgrade -y && sudo dnf distro-sync -y && sudo dnf autoremove -y && sudo dnf check -y
sudo dnf remove -y jdk
sudo dnf remove -y jre
sudo dnf autoremove -y && sudo dnf check -y && sudo dnf upgrade -y && sudo dnf distro-sync -y && sudo dnf autoremove -y && sudo dnf check -y
sudo yum groupremove gnome-desktop-environment
sudo dnf group remove gnome-desktop-environment
sudo dnf remove -y gnome-desktop3
sudo dnf remove -y gnome-session
sudo dnf remove -y gnome-session-wayland-session
sudo dnf remove -y gnome-session-xsession
sudo dnf remove -y gnome-shell
sudo dnf remove -y gnome-classic-session
sudo dnf remove -y gdm
sudo systemctl disable gdm
sudo systemctl remove gdm
sudo dnf remove -y *gnome*
sudo dnf remove -y @gnome-desktop
sudo dnf remove -y gnome-*
sudo dnf remove -y gnome
sudo dnf remove -y mutter
sudo dnf autoremove -y && sudo dnf check -y && sudo dnf upgrade -y && sudo dnf distro-sync -y && sudo dnf autoremove -y && sudo dnf check -y
echo ""

echo "Done."
echo ""
echo "Rebooting in 5, here's hoping."
echo ""
sleep 5s
sudo reboot now

