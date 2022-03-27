#update and upgrade
sudo apt update
sudo apt -y upgrade

#install apt packages
sudo apt -y install \
gnome-tweaks \
neofetch \
gparted \
python3-pip \
git \
cmake \
vlc \
openjdk-16-jre \
snapd \
wget

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
