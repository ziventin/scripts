#!/bin/bash
#an easy method to install my configs and scripts
#for archlinux
set $ins pacman -Sq

echo "starting script"
echo ""

echo "creating user"
useradd -m $1

echo "seting password"
passwd $1

# install git
echo "installing git"
$ins git
echo "DONE"

#clone scripts and configs
echo "cloning scripts and configs"
cd /home/$1
git clone https://www.github.com/ziventin/scripts
cd scripts

#put bashrc into the correct location
echo "moving .bashrc"
ln -sf /home/$1/scripts/bashrc /home/$1/.bashrc 

#put xinitrc into the correct location
echo "moving .xinitrc"
ln -sf /home/$1/scritps/xinitrc /home/$1/.xinitrc

#put Xresources into the correct location
echo "moving .Xresources"
ln -sf /home/$1/scripts/Xresources /home/$1/.Xresources

#put i3 config into the correct location
mkdir /home/$1/.config
mkdir /home/$1/.config/i3
echo "moving i3 config"
ln -sf /home/$1/scritps/i3_config /home/$1/.config/i3/config

#put vimrc into the correct location
echo "moving .vimrc"
ln -sf /home/$1/scripts/vimrc /home/$1/.vimrc

#clone my firefox start page
echo "cloning firefox startpage"
git clone https://www.github.com/ziventin/startpage startpage

#give ownership of teh files to the user
chown -f -R $1:$1 /home/$1/scripts

#install programs
echo "installing programs"
echo ""
$ins firefox
$ins sudo
$ins rxvt-unicode
$ins feh
$ins mesa
$ins xorg
$ins figlet
$ins lolcat
$ins base-devel
$ins vim
$ins i3blocks
$ins i3status
$ins i3lock
$ins pulseaudio
echo "DONE"

#install i3-gaps through AUR
echo "installing i3-gaps"
git clone https://aur.archlinux.org/i3-gaps-git.git i3-gaps
chown -f -R $1:$1 /home/$1/scripts
cd i3-gaps
su $1 -c "makepkg -si"
cd ..

echo ""
echo "All programs and scripts installed."
exit
