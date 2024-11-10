#!/bin/bash

# Ensure the system package list is up-to-date
echo "Updating system package list..."
sudo yum update -y

# Install Nginx
echo "Installing Nginx..."
sudo yum install nginx -y

# Start and enable Nginx to run on boot
echo "Starting Nginx service..."
sudo systemctl start nginx

# Enable Nginx to start on boot
echo "Enabling Nginx to start on boot..."
sudo systemctl enable nginx

# Check if Nginx is running
echo "Checking Nginx status..."
sudo systemctl status nginx

# Provide a message about testing the installation
echo "Nginx installation completed successfully. You can test it by navigating to your server's IP address in a web browser."

