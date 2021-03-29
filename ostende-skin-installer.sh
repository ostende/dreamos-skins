#!/bin/bash -e
# created by Ostende - Installer for DreamOS v.04


echo ""
echo "********** Downlaod and Install (( Zombi-Shadow-FHD Skin Mod Ostende)) **********"
echo ""
wget --no-check-certificate "https://github.com/ostende/dreamos-skins/archive/refs/heads/main.zip" -O /tmp/ostende-dreamskins-main.zip > /dev/null 2>&1
unzip /tmp/ostende-dreamskins-main.zip -d /tmp/ > /dev/null 2>&1
cp -rf /tmp/ostende-dreamskins-main/ostende-dreamskins/Zombi-Shadow-FHD /usr/share/enigma2/Zombi-Shadow-FHD > /dev/null 2>&1
cp -rf /tmp/ostende-dreamskins-main/ostende-dreamskins/renderers/* /usr/lib/enigma2/python/Components/Renderer/ > /dev/null 2>&1
rm -rf /tmp/ostende-dreamskins* > /dev/null 2>&1
rm -f /tmp/ostende-dreamskins-main.zip > /dev/null 2>&1

echo "... install finish"
exit 0
