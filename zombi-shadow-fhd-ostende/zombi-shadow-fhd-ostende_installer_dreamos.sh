#!/bin/bash -e
# Zombi-Shadow-Ostende Installer v.01
echo deb [trusted=yes] https://apt.fury.io/ostende/ ./ > /etc/apt/sources.list.d/ostende.list
apt-get update
apt-get -f -y --assume-yes install enigma2-skin-gp4-zombi-shadow-fhd-ostende
sleep 3
echo ""
echo "************************"
read -p "Restarting Enigma2? (Y/N): " response </dev/tty
if [ "$response" == "y" ]; then
    echo "Enigma2 Restarting"
    systemctl restart enigma2
else
    echo "to activate the plugin you have to restart enigma2"
fi
echo "... install finish"
exit 0
