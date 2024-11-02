#!/bin/bash
set -x  # Enable debugging

# Update and install required packages
sudo apt update
sudo apt install -y unzip apache2 wget

# Start and enable Apache
sudo systemctl start apache2
sudo systemctl enable apache2

# Download the zip file
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip

# Unzip the downloaded file
unzip -o neogym.zip

# Copy files to the web directory
sudo cp -r neogym-html/* /var/www/html

# Restart Apache
sudo systemctl restart apache2

