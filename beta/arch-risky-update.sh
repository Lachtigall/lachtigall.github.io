# arch-risky-update.sh

# do not use, this is dumb

sudo pacman-key --refresh-keys

sudo pacman -S archlinux-keyring
sudo pacman -Sy archlinux-keyring
sudo pacman -Sy archlinux-keyring && sudo pacman -Su

sudo pacman-key --refresh-keys

sudo pacman-key --populate archlinux

sudo pacman -Fy

yes | sudo pacman -R espeakup --noconfirm
yes | sudo pacman -R espeak --noconfirm
yes | sudo pacman -S espeak-ng --noconfirm

yes | sudo pacman -Syy --noconfirm

yes | sudo pacman -Syu --noconfirm

yes | sudo pacman -Syyu --noconfirm

# EOF

