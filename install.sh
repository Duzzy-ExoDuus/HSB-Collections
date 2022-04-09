#!/bin/sh
sudo cp -r ./backgrounds/HSB-Collections /usr/share/backgrounds/
sudo cp -r ./fonts/HSB-collection /usr/share/fonts/truetype/
sudo cp -r ./grub_themes/dedsec /boot/grub/themes/
sudo cp -r ./icons/HSB-Collection /usr/share/icons/
sudo cp -r ./plymouth_themes/dotLockG /usr/share/plymouth/themes/
sudo cp -r ./themes/HSB-Collection /usr/share/themes/

cat <<EOF
# [GRUB]
# Edit /etc/default/grub file. 
# Find the line starting with "#GRUB_THEME" and change it to 
# "GRUB_THEME=/boot/grub/themes/[YOURTHEME]/theme.txt" 
# Run sudo update-grub
#
# [Plymouth]
# sudo plymouth-set-default-theme [YOURTHEME] -R
# Or
# sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/dotLockG/dotLockG.plymouth 100
# sudo update-alternatives --config default.plymouth
EOF
