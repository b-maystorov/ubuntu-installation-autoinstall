#!/bin/bash

# Ubuntu Post-Install Example Script
# This script shows basic steps after a fresh Ubuntu installation.
# It is meant as a learning example and should be checked before real use.

echo "Starting Ubuntu post-install setup..."

# Update package list
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Install useful basic tools
sudo apt install -y \
    curl \
    wget \
    git \
    vim \
    htop \
    net-tools \
    openssh-server

# Enable and start SSH service
sudo systemctl enable --now ssh

# Show SSH service status
sudo systemctl status ssh --no-pager

# Show network information
ip a

# Show disk usage
df -h

# Show memory usage
free -h

echo "Post-install setup finished."
