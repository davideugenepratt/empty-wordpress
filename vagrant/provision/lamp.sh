#!/bin/bash

sudo apt-get update

sudo apt-get install -y apache2

sudo a2enmod rewrite

sudo systemctl restart apache2

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

sudo apt-get update

sudo apt-get install -y mysql-server

sudo apt-get install -y php libapache2-mod-php php-mcrypt php-mysql

sudo cp /vagrant/vagrant/provision/apache/dir.conf /etc/apache2/mods-enabled/dir.conf

sudo cp /vagrant/vagrant/provision/apache/000-default.conf /etc/apache2/sites-enabled/000-default.conf

sudo service apache2 restart
