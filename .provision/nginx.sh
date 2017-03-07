#!/usr/bin/env bash


#Install nginx
apt-get update
apt-get upgrade -y
apt-get install nginx -y
service nginx start

#Setup nginx
rm /etc/nginx/sites-available/default
rm /etc/nginx/sites-enabled/default
cp /vagrant/.provision/labo2.conf /etc/nginx/sites-available/labo2
cd /etc/nginx/sites-enabled
ln -s ../sites-available/labo2 
service nginx restart

#Install git
apt-get install git -y

#Clone git repo
cd /var/www
git clone https://github.com/ChingizMizambekov/dops_labo1.git labo2


