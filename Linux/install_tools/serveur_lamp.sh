#!/bin/bash
# Permet d'installer un serveur wamp sur linux

echo -e '[+] Mise a jour du système'
apt-get update
apt-get upgrade
echo -e '\n\t[+] Mise a jour terminé...'

echo -e '\n\t[+] Installation des composants de base.'
# apache2 php5 mysql-server libapache2-mod-php5 php5-mysql
apt-get install apache2
apt-get install php5
apt-get install mysql-server
apt-get install libapache2-mod-php5
apt-get install php5-mysql
echo -e '\n\t[+] Installation des composants terminée.'

echo -e '\n\t[+] changement des droits sur les dossiers /var/www'
chmod -R 755 /var/www

echo -e '\n\t[+] lancement du serveur'
service apache2 start
