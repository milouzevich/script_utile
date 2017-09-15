#!/bin/bash

echo '[+] Mise a jour du systeme'
apt-get update
apt-get upgrade

echo '\n'
echo '[+] Installation du Serveur Wamp'
echo '\n\t[+] apache2'
apt-get install apache2
echo '\n\t[+] php5'
apt-get install php5
echo '\n\t[+] libapache2-mod-php5'
apt-get install libapache2-mod-php5
echo '\n\t[+] mysql-server'
apt-get install mysql-server
echo '\n\t[+] php5-mysql'
apt-get install php5-mysql5

echo '\n\n[+] Installation Terminé'
chmod -R 755 /var/www
echo '\n\t[+]Activation du serveur apache'
service apache2 start
