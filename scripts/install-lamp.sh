#!/usr/bin/env bash

echo ">>> Installing LEMP - NGINX"
apt-get update
apt-get -y --no-install-recommends install nginx
systemctl restart nginx

echo ">>> Installing LEMP - MySQL"
apt-get install -y --no-install-recommends mysql-server

echo ">>> Installing LEMP - PHP"
add-apt-repository universe
add-apt-repository ppa:ondrej/php
apt-get update -y
apt-get upgrade -y
apt-get install -y php7.3

echo ">>> Installing LEMP - PHP dependencies"
apt-get install -y php7.3-opcache php7.3-soap php7.3-gd php7.3-fpm php7.3-mbstring php7.3-common php7.3-mysql php7.3-xml php7.3-cli php7.3-json php7.3-curl php7.3-zip php7.3-bcmath php7.3-intl
systemctl enable php7.3-fpm
