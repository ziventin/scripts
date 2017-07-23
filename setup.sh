#!/bin/bash
#an easy method to install my configs and scripts
#for archlinux
echo "starting scripts"

# install git
echo "installing git"
(sudo pacman -S git &)
echo "DONE"

#clone scripts and configs
echo "cloning scripts and configs"
git clone https://www.github.com/ziventin/scripts
echo "DONE"
cd scripts

#put bashrc into the correct location
echo "moving .bashrc"
ln -s bashrc ~/.bashrc
echo "DONE"

#put xinitrc into the correct location
echo "moving .xinitrc"
ln -s xinitrc ~/.xinitrc
echo "DONE"

#put Xresources into the correct location
ln -s Xresources ~/.Xresources

#put i3 config into the correct location
mkdir ~/.config
mkdir ~/.config/i3
ln -s i3_config ~/.config/i3/config

#put vimrc into the correct location
ln -s vimrc ~/.vimrc

#clone my firefox start page
git clone https://www.github/ziventin/startpage

#install programs
sudo pacman -S firefox rxvt-unicode feh mesa xorg lightdm lightdm-gtk-greeter screenfetch base_devel

#install cdm through AUR
git clone https://aur.archlinux.org/cdm-git.git cdm
cd cdm
makepkg -si
cd ..
rm -rf cdm

#install i3-gaps through AUR
git clone https://aur.archlinux.org/i3-gaps-git.git
cd i3-gaps-git
makepkg -si
cd ..
rm -rf i3-gaps-git
