#!/bin/bash

# Update package lists
sudo apt update

# Install necessary packages
sudo apt install unzip apache2 wget -y

# Start and enable Apache
sudo systemctl start apache2
sudo systemctl enable apache2

# Download and unzip the website template
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip
sudo unzip -o neogym.zip -d /tmp  # Unzip to a temporary directory

# Copy the files to the web directory
sudo cp -r /tmp/neogym-html/* /var/www/html

# Restart Apache to apply changes
sudo systemctl restart apache2

