#!/bin/bash

# fedora 35 nvidia graphics drivers easy

# run this by sudo su (and then) sudo bash f35nvdriverszoey.sh

sudo dnf install dnf-plugins-core -y
sudo dnf copr enable t0xic0der/nvidia-auto-installer-for-fedora -y
sudo dnf install nvautoinstall -y

sudo nvautoinstall driver

sudo nvautoinstall ffmpeg

sudo nvautoinstall getall

sudo nvautoinstall nvrepo

sudo nvautoinstall plcuda

sudo nvautoinstall primec

sudo nvautoinstall rpmadd

sudo nvautoinstall vidacc

sudo nvautoinstall vulkan


sudo nvautoinstall driver

sudo nvautoinstall ffmpeg

sudo nvautoinstall getall

sudo nvautoinstall nvrepo

sudo nvautoinstall plcuda

sudo nvautoinstall primec

sudo nvautoinstall rpmadd

sudo nvautoinstall vidacc

sudo nvautoinstall vulkan


sudo nvautoinstall driver

sudo nvautoinstall ffmpeg

sudo nvautoinstall getall

sudo nvautoinstall nvrepo

sudo nvautoinstall plcuda

sudo nvautoinstall primec

sudo nvautoinstall rpmadd

sudo nvautoinstall vidacc

sudo nvautoinstall vulkan

# yes this loops 3 times on purpose
