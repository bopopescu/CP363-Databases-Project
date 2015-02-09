#!/usr/bin/env bash

# Swap file is used to resolve memory problems on low memory servers.

sudo fallocate -l 4G /swapfile
echo "[ DEBUG ]: Allowcated swapfile at location: /swapfile"

sudo chmod 600 /swapfile
echo "[ DEBUG ]: Swapfile located at /swapfile permissed changed to 0600."

sudo mkswap /swapfile
echo "[ DEBUG ]: Making swapfile at /swapfile"

sudo swapon /swapfile
echo "[ DEBUG ]: Activating swapfile located at /swapfile"
