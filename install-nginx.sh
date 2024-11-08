#!/bin/bash

# install_nginx.sh

# This script installs NGINX on a Linux-based system (Ubuntu/Debian)
# and starts the service.

# Step 1: Update system packages
echo "Updating system packages..."
sudo apt update -y

# Step 2: Install NGINX
echo "Installing NGINX..."
sudo apt install nginx -y

# Step 3: Enable NGINX to start on boot
echo "Enabling NGINX to start on boot..."
sudo systemctl enable nginx

# Step 4: Start the NGINX service
echo "Starting NGINX service..."
sudo systemctl start nginx

# Step 5: Check the status of NGINX
echo "Checking NGINX service status..."
sudo systemctl status nginx

# Step 6: Open port 80 and 443 in the firewall (if UFW is enabled)
echo "Opening ports 80 and 443 in firewall..."
sudo ufw allow 'Nginx Full'

# Step 7: Verify installation and test the web server
echo "Verifying NGINX installation..."
curl -I localhost

echo "NGINX installation completed!"
echo "You should now be able to access the default NGINX page by going to http://localhost or http://<your-server-ip> in a browser."
