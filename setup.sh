#!/bin/bash
#an easy method to install my configs and scripts
#for archlinux
echo "starting script"

# install git
echo "installing git"
sudo pacman -S git
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
echo "moving .Xresources"
ln -s Xresources ~/.Xresources
echo "DONE"

#put i3 config into the correct location
mkdir ~/.config
mkdir ~/.config/i3
echo "moving i3 config"
ln -s i3_config ~/.config/i3/config
echo "DONE"

#put vimrc into the correct location
echo "moving .vimrc"
ln -s vimrc ~/.vimrc
echo "DONE"

#clone my firefox start page
echo "cloning firefox startpage"
git clone https://www.github/ziventin/startpage
echo "DONE"

#install programs
echo "installing programs"
sudo pacman -S firefox rxvt-unicode feh mesa xorg screenfetch base_devel vim
echo "DONE"

#install cdm through AUR
echo "installing cdm"
echo "cloning"
git clone https://aur.archlinux.org/cdm-git.git cdm
cd cdm
echo "instaling"
makepkg -si
cd ..
rm -rf cdm
echo "DONE"

#install i3-gaps through AUR
echo "installing i3-gaps"
echo "cloning"
git clone https://aur.archlinux.org/i3-gaps-git.git
cd i3-gaps-git
echo "instaling"
makepkg -si
cd ..
rm -rf i3-gaps-git
echo "done"

echo ""
echo "all programs and scripts installed"
exit