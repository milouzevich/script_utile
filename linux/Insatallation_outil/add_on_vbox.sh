#!/bin/bash
# Il faut lancer le bouton add-on dans vbox avant de lancer le script

apt-get update
apt-get upgrade
apt-get install linux-headers-$(uname -r)
apt-get install build-essential module-assistant


mount /media/cdrom0
cd /media/cdrom0

sh VBoxLinuxAdditions.run

reboot
