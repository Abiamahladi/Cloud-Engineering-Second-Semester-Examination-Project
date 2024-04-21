#!/bin/bash

# Update system packages
sudo apt-get update
sudo apt-get upgrade -y

# Install LAMP stack
sudo apt-get install apache2 mysql-server php libapache2-mod-php php-mysql -y

# Clone PHP application from GitHub
git clone https://github.com/laravel/laravel.git /var/www/html/laravel

# Configure Apache
sudo a2enmod rewrite
sudo sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf
sudo systemctl restart apache2

# Configure MySQL
# Add your MySQL configurations here

