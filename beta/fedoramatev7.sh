# Install MATE Desktop on Fedora v7

# The MATE theme I use is known as GreenLaguna, it's not incredibly pretty, but, it means that
#  titlebar size, height, and the location, size, and position of the window buttons stays as
#   consistent as possible between apps/windowing toolkits, as this is very important to me,
#    and was the reason I can't use Xfce 4.16, due to how it treats this with GTK vs Non-GTK apps.

echo "Working..."

sudo dnf autoremove -y && sudo dnf check -y && sudo dnf upgrade -y && sudo dnf distro-sync -y && sudo dnf autoremove -y && sudo dnf check -y

sudo dnf update -y
sudo dnf upgrade -y
sudo dnf upgrade --refresh -y

sudo dnf install -y sddm
sudo systemctl enable sddm

sudo dnf install -y mate-desktop
sudo dnf install -y @mate-desktop
sudo dnf groupinstall mate-desktop
sudo dnf -y group install "MATE Desktop"
sudo dnf install -y mate-desktop-environment

sudo dnf remove -y elementary-notifications
sudo dnf remove -y kf5-knotif*
sudo dnf remove -y lxqt-notificationd
sudo dnf remove -y notification-daemon

sudo dnf install -y mate-notification-daemon-common
sudo dnf install -y mate-notification-daemon

sudo dnf reinstall mate-notification-daemon-common
sudo dnf reinstall mate-notification-daemon

sudo dnf install -y mate-notification-daemon-common
sudo dnf install -y mate-notification-daemon

rpm -qa | grep notif >list
sudo dnf remove -y $(awk '{print $1}' <list)

sudo dnf install -y mate-notification-daemon-common
sudo dnf install -y mate-notification-daemon

sudo dnf reinstall mate-notification-daemon-common
sudo dnf reinstall mate-notification-daemon

sudo dnf install -y mate-notification-daemon-common
sudo dnf install -y mate-notification-daemon

# MATE applications
sudo dnf install -y @mate-applications
sudo dnf groupinstall mate-applications
#-/
#/

sudo dnf install -y mate-desktop
sudo dnf install -y @mate-desktop
sudo dnf groupinstall mate-desktop
sudo dnf -y group install "MATE Desktop"
sudo dnf install -y mate-desktop-environment
sudo dnf install -y @mate-applications
sudo dnf groupinstall mate-applications

sudo dnf update -y
sudo dnf upgrade -y
sudo dnf upgrade --refresh -y

sudo dnf autoremove -y && sudo dnf check -y && sudo dnf upgrade -y && sudo dnf distro-sync -y && sudo dnf autoremove -y && sudo dnf check -y

echo "Done."
echo ""
#-/
#/
