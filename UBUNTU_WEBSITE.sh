#!/bin/bash
sudo su

apt update
apt install unzip apache2 wget -y

systemctl start apache2
systemctl enable apache2

wget https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip
unzip -o neogym.zip

cp -r neogym-html/* /var/www/html
systemctl restart apache2
