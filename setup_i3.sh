#!/usr/bin/bash

#set -e #abort on error

sudo pacman -Sy --noconfirm i3 dash feh i3lock rofi compton imagemagick scrot gsimplecal rxvt-unicode acpi notify-osd clipit adobe-source-code-pro-fonts redshift
yaourt -S --noconfirm ttf-font-awesome i3blocks pcmanfm
ruby -e "$(curl -fsSL https://raw.github.com/supermarin/YosemiteSanFranciscoFont/master/install)"

sudo mkdir -p  /usr/lib/i3blocks
sudo cp -r ./i3blocks/scripts/* /usr/lib/i3blocks/

mkdir -p $HOME/.config/i3blocks
mkdir -p $HOME/.config/i3
mkdir -p $HOME/.wallpaper
mkdir -p $HOME/screenshots

cp ./i3blocks/i3blocks.conf $HOME/.config/i3blocks/config
cp ./config $HOME/.config/i3/config
cp ./i3lock-wrapper $HOME/.config/i3/i3lock-wrapper
cp ./wallpaper/* $HOME/.wallpaper
cp ./Xresources $HOME/.Xresources
cp ./bashrc $HOME/.bashrc
cp ./configure-xrandr $HOME/.config/i3/configure-xrandr
cp ./switch_keyboard_layout $HOME/.config/i3/switch_keyboard_layout
