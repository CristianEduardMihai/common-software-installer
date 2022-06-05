#!/bin/bash

#update and upgrade
sudo apt update
sudo apt -y upgrade

#install apt packages
sudo apt -y install \
gnome-tweaks \
gnome-shell-extensions \
neofetch \
gparted \
python3-pip \
git \
cmake \
vlc \
openjdk-17-jdk \
snapd \
wget \
cheese

#install snap packages
sudo snap install --classic \
code

#install chrome, discord, vnc viewer via deb packages
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
wget https://downloads.realvnc.com/download/file/viewer.files/VNC-Viewer-6.21.1109-Linux-x64.deb
chmod +x *.deb
sudo apt -y install ./*.deb

rm *.deb

# Install themes and icons, disabled

<<COMMENT

cd

git clone https://github.com/vinceliuice/Orchis-theme
cd Orchis-theme/
./install.sh

cd

#Tela icon theme
git clone https://github.com/vinceliuice/Tela-icon-theme
cd Tela-icon-theme/
./install.sh

cd

#echo some links
echo "https://extensions.gnome.org/extension/1160/dash-to-panel/"

echo "https://extensions.gnome.org/extension/19/user-themes/"

echo "https://youtu.be/AZniwcfQh3w?t=253"

COMMENT
