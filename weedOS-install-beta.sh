#!/bin/bash
echo 'Weed OS II 1.9.1 Beta' 
echo 'Made with < 3 in Florida'
sleep 3
clear

### Stage 1 

sudo dpkg --add-architecture i386
sudo apt update
sudo apt install xserver-xorg xinit htop mesa-utils firmware-realtek firmware-iwlwifi git unzip wget plymouth plymouth-themes cpufrequtils lightdm xserver-xorg-input-synaptics -y
mkdir cache 
mkdir -p "${HOME}/.config/gtk-4.0"
mkdir ~/.icons
mkdir ~/.themes
mkdir Desktop
mkdir Downloads
mkdir Documents
mkdir Pictures
mkdir Videos 
mkdir ~/.config/qt5ct/colors

### Stage 2 

sudo apt install xfce4 xfce4-whiskermenu-plugin picom plank qt5-gtk2-platformtheme network-manager network-manager-gnome xfce4-power-manager-plugins xfce4-whiskermenu-plugin -y
sudo apt install numix-icon-theme-circle numix-icon-theme fonts-roboto menulibre mugshot lightdm-gtk-greeter-settings xfce4-screenshooter mousepad qt5ct -y
sudo apt install firefox-esr gnome-software flatpak gnome-software-plugin-flatpak vlc -y
WEEDOSSCRIPT=`pwd`
cd cache
git clone https://github.com/numixproject/numix-icon-theme-circle
sudo cp -r numix-icon-theme-circle/Numix-* /usr/share/icons
cp -r numix-icon-theme-circle/Numix-* ~/.icons
rm -rf numix-icon-theme-circle/
wget https://github.com/catppuccin/gtk/releases/download/v0.7.0/Catppuccin-Frappe-Standard-Green-Dark.zip
wget https://github.com/catppuccin/gtk/releases/download/v0.7.0/Catppuccin-Latte-Standard-Green-Light.zip
unzip Catppuccin-Frappe-Standard-Green-Dark.zip
unzip Catppuccin-Latte-Standard-Green-Light.zip
rm Catppuccin-*.zip
cp -r Catppuccin-* ~/.themes/
sudo cp -r Catppuccin-* /usr/share/themes
rm -rf Catppuccin-* 
cd ~/.themes/
mv Catppuccin-Frappe-Standard-Green-Dark Catppuccin-Green-Dark
mv Catppuccin-Latte-Standard-Green-Light Catppuccin-Green-Lite
cd /usr/share/themes/
sudo mv Catppuccin-Frappe-Standard-Green-Dark Catppuccin-Green-Dark
sudo mv Catppuccin-Latte-Standard-Green-Light Catppuccin-Green-Lite
cd ${WEEDOSSCRIPT}/ 

### Stage 3 

flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo
#wget < USER CONF >
cd cache
wget https://cdn.discordapp.com/attachments/926440184411729940/1171629350337122354/Wallpapers-PT-1.tar.gz
wget https://cdn.discordapp.com/attachments/926440184411729940/1171628802548441138/Wallpapers-PT-2.tar.gz
wget https://cdn.discordapp.com/attachments/926440184411729940/1171628861369356498/Wallpapers-PT-3.tar.gz
tar -xvzf Wallpapers-PT-1.tar.gz
#sudo unzip Wallpapers-*-PART2.zip
#sudo unzip Wallpapers-*-PART3.zip
#sudo rm Wallpapers-*.zip
#sudo cp *.svg /usr/share/desktop-base/homeworld-theme/wallpaper/contents/images/
cd ..

