#!/bin/bash
echo 'Weed OS II 1.1 Beta' 
echo 'Made with < 3 in Florida'
sleep 3
clear

### Stage 1 

sudo dpkg --add-architecture i386
sudo apt update
sudo apt install xserver-xorg xinit htop mesa-utils firmware-realtek firmware-iwlwifi git unzip wget plymouth plymouth-themes cpufrequtils lightdm xserver-xorg-input-synaptics -y
mkdir cache 

### Stage 2 

sudo apt install xfce4 xfce4-whiskermenu-plugin picom plank qt5-gtk2-platformtheme network-manager network-manager-gnome xfce4-power-manager-plugins xfce4-whiskermenu-plugin -y
sudo apt install numix-icon-theme-circle numix-icon-theme fonts-roboto menulibre mugshot lightdm-gtk-greeter-settings xfce4-screenshooter mousepad 
cd cache
git clone https://github.com/numixproject/numix-icon-theme-circle
sudo cp -r numix-icon-theme-circle/Numix-* /usr/share/icons
cp -r numix-icon-theme-circle/Numix-* ~/.icons
rm -rf numix-icon-theme-circle/
wget https://github.com/catppuccin/gtk/releases/download/v0.7.0/Catppuccin-Frappe-Standard-Green-Dark.zip
wget https://github.com/catppuccin/gtk/releases/download/v0.7.0/Catppuccin-Latte-Standard-Green-Light.zip
unzip Catppuccin-*.zip
rm Catppuccin-*.zip
cp -r Catppuccin-* ~/.themes
rm -rf Catppuccin-* 
# GTK 4 Fix 
mkdir -p "${HOME}/.config/gtk-4.0"
ln -sf "${THEME_DIR}/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
ln -sf "${THEME_DIR}/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
ln -sf "${THEME_DIR}/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"

