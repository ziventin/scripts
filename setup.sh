#!/bin/bash
#an easy method to install my configs and scripts
#for archlinux

# install git
sudo pacman -S git

#clone scripts and configs
git clone https://www.github.com/ziventin/scripts
cd scripts

#put bashrc into the correct location
ln -S bashrc ~/.bashrc

#put xinitrc into the correct location
ln -S xinitrc ~/.xinitrc

#put Xresources into the correct location
ln -S Xresources ~/.Xresources

#put i3 config into the correct location
mkdir ~/.config
mkdir ~/.config/i3
ln -S i3_config ~/.config/i3/config

#put vimrc into the correct location
ln -S vimrc ~/.vimrc

#clone my firefox start page
git clone https://www.github/ziventin/startpage

#enable multilib repo for steam
echo "[multilib]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
sudo pacman -Syu

#install programs
sudo pacman -S firefox rxvt-unicode feh mesa xorg-server lightdm lightdm-gtk-greeter screenfetch steam ttf_liberation 

#enable lightdm
systemctl enable lighdm.service

#install i3-gaps through the AUR
git clone https://aut.archlinux.org/i3-gaps-git.git
cd i3-gaps-git
makepkg -si
cd ..
rm -rf i3-gaps-git
