#!/bin/bash
echo 'Weed OS II 1.7 Beta' 
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
#cd cache 
#sudo apt install cmake extra-cmake-modules libkdecorations2-dev libkf5plasma-dev libqt5x11extras5-dev qtdeclarative5-dev libkf5windowsystem-dev libkf5coreaddons-dev libkf5iconthemes-dev gettext qt3d5-dev build-essential libkf5guiaddons-dev libkf5configwidgets-dev -y
#git clone --single-branch --depth=1 https://github.com/Luwx/Lightly.git
#cd Lightly && mkdir build && cd build
#cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF ..
#make
#sudo make install
#cd ..
#cd ..
#git clone https://github.com/catppuccin/qt5ct
#sudo cp /qt5ct/Catppuccin-Frappe.conf ~/.config/qt5ct/colors/ 
#sudo cp /qt5ct/Catppuccin-Latte.conf ~/.config/qt5ct/colors/ 
