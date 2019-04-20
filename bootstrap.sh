#!/bin/bash
# This script install apache and sets the document root to /vagrant
apt-get update
apt-get install apache2 -y
if ! [ -L /var/www/html ]; then
  rm -rf /var/www/html
  ln -fs /vagrant /var/www/html
fi
