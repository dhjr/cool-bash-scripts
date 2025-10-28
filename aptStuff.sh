#!/bin/bash

# System Update and Cleanup Script
# --------------------------------
# This script updates package lists, upgrades all packages,
# removes unnecessary ones, and cleans up cached files.

# Ensure the script runs with sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo:"
  echo "  sudo $0"
  exit 1
fi

echo "==============================="
echo "  System Update & Cleanup Tool "
echo "==============================="

# Update package lists
echo
echo "[1/4] Updating package lists..."
apt update -y

# Upgrade packages
echo
echo "[2/4] Upgrading installed packages..."
apt upgrade -y

# Remove unnecessary packages
echo
echo "[3/4] Removing unused packages..."
apt autoremove -y

# Clean up local cache
echo
echo "[4/4] Cleaning up package cache..."
apt clean

echo
echo "✅ System update and cleanup complete!"
