#!/usr/bin/env bash

echo ">>> setting nginx file for php"
cp -f /var/www/html/nginx/default /etc/nginx/sites-available/default
systemctl restart nginx
rm -r /var/www/html/nginx/
