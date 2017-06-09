#!/usr/bin/env bash

su - ubuntu -c 'curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && sudo mv wp-cli.phar /usr/local/bin/wp'

wget https://phar.phpunit.de/phpunit-5.7.phar

sudo chmod +x phpunit-5.7.phar

sudo mv phpunit-5.7.phar /usr/local/bin/phpunit

su - ubuntu -c 'mkdir /vagrant/wordpress && cd /vagrant/wordpress && wp core download'

cp /vagrant/vagrant/provision/wp/wp-config.php /vagrant/wordpress/wp-config.php

su - ubuntu -c 'cd /vagrant/wordpress && wp core install --url=http://192.168.69.69 --title="Empty WordPress Site" --admin_user="admin" --admin_password="admin" --admin_email="noemail@doesnotexist.com" --skip-email'
