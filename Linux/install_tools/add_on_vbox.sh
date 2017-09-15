#!/bin/bash
# script permettant d'installer les add_on de virtualbox sur un système linux

echo -e '[+] Mise a jour du système'
apt-get update
apt-get upgrade
echo -e '\n\t[+]Mise a jour terminé...'

echo -e '\n\t[+] Mise place des éléments manquants'
apt-get install linux-headers-$(uname -r)
apt-get install build-essential module-assistant

mount /media/cdrom0
cd /media/cdrom0
echo -e '\t\t[+] lancement du script add_on Linux'
sh VBoxLinuxAdditions.run

echo -e '\t\t[+] Le système va être rebooté'
reboot
