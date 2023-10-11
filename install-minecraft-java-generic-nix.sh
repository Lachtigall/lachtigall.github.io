#!/bin/bash
# install-minecraft-java-generic-nix.sh

# requires wget

# Ask the user if they're sure
read -p "Install Minecraft? (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "" && echo "Okay." && echo "";
else
  echo "" && echo "Setup ended by user choice. Your system has not been modified." && echo "" && exit;
fi

sudo echo "Starting..."

sudo mkdir /opt/

sudo chown $USER /opt
sudo chown $USER /opt/
sudo chown $USER /opt/*

sudo mkdir /opt/novi-minecraft

sudo chown $USER /opt/novi-minecraft

cd /opt/novi-minecraft

sudo wget https://launcher.mojang.com/download/Minecraft.tar.gz

sudo chown $USER /opt/novi-minecraft/Minecraft.tar.gz

tar -xzvf Minecraft.tar.gz

sleep 2s

sudo rm -rf /opt/novi-minecraft/Minecraft.tar.gz

ln -s /opt/novi-minecraft/minecraft-launcher/minecraft-launcher /home/$(whoami)/Desktop/Minecraft

echo "All done, shortcut is on your desktop."
