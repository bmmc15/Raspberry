#!/bin/bash
# Install Node.js and npm
echo "Installing Node..."
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Installing TypeScript and Solana."
# Install TypeScript, and Solana
sudo npm install -g typescript @solana/web3.js @solana/cli

echo "Installing Solana finished!"
