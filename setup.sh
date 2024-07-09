#!/bin/bash

# Update package list and install dependencies
sudo apt update
sudo apt install -y curl

# Install Node.js and npm (version 20)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

# Install Ganache CLI
npm install -g ganache-cli

# Install Truffle
npm install -g truffle

# Create a directory named 'blockchain' and initialize it with Truffle
mkdir blockchain
cd blockchain
truffle init

echo "Setup complete. Node.js (version 20), npm, Ganache CLI, and Truffle have been installed, and the 'blockchain' directory has been initialized with Truffle."
