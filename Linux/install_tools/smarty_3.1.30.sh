#!/bin/bash

# Installation du template PHP Smarty 3.1.30 sur un système linux
# Il faut au prealable donne les droits a+x sur le fichier /var/www/*
# il faut donner le droit à l'utilisateur user:user sur le fichier /var/www/*

cd
cd Téléchargements/
wget https://github.com/smarty-php/smarty/archive/v3.1.30.tar.gz
tar zxvf v3.1.30.tar.gz
cd smarty-3.1.30/
cp -R libs/ /var/www/html/Smarty
cd
cd /var/www/html
mkdir templates templates_c
