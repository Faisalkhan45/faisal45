#!/bin/bash
set -x  # Enable debugging

# Update and install required packages
apt update
apt install -y unzip apache2 wget

# Start and enable Apache
systemctl start apache2
systemctl enable apache2

# Download the zip file
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip

# Unzip the downloaded file
unzip -o neogym.zip

# Copy files to the web directory
cp -r neogym-html/* /var/www/html

# Restart Apache
systemctl restart apache2

