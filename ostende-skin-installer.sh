#!/bin/bash -e
# created by Ostende - Installer for DreamOS v.04

SKIN_DIR="/usr/share/enigma2/Zombi-Shadow-FHD"

if [ !  $SKIN_DIR ]; then
echo ""
echo "********** Downlaod and Install (( Zombi-Shadow-FHD Skin Mod Ostende)) **********"
echo ""
wget --no-check-certificate "https://github.com/ostende/dreamos-skins/archive/refs/heads/main.zip" -O /tmp/ostende-dreamskins-main.zip > /dev/null 2>&1
unzip /tmp/ostende-dreamskins-main.zip -d /tmp/ > /dev/null 2>&1
rm -rf $SKIN_DIR/*
cp -rf /tmp/ostende-dreamskins-main/ostende-dreamskins/Zombi-Shadow-FHD /usr/share/enigma2/Zombi-Shadow-FHD > /dev/null 2>&1
cp -rf /tmp/ostende-dreamskins-main/ostende-dreamskins/renderers/* /usr/lib/enigma2/python/Components/Renderer/ > /dev/null 2>&1
rm -rf /tmp/ostende-dreamskins* > /dev/null 2>&1
rm -f /tmp/ostende-dreamskins-main.zip > /dev/null 2>&1
sed -i 's/OVLock() == False/OVLock() == True/g' $SKIN_DIR/styles.xml
fi
sync
echo "config.skin.primary_skin=Zombi-Shadow-FHD/skin.xml" >> /etc/enigma2/settings
echo "************************"
read -p "Gui restarting? (y/n): " response </dev/tty
if [ "$response" == "y" ]; then
    echo "enigma2 restarting now"
    systemctl restart enigma2
else
    echo "you need restart enigma2"
fi
echo "... install finish"
exit 0
