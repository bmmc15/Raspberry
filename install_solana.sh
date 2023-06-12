#!/bin/bash
# Install Node.js and npm
echo "Installing Node..."
echo "Checking if file exists..."
# Check if node-v18.16.0-linux-arm64.tar.xz file exists in the current directory
if [ ! -f node-v18.16.0-linux-arm64.tar.xz ]; then
    echo "node-v18.16.0-linux-arm64.tar.xz file not found in the current directory."
    echo "Please copy the file to this directory and try again."
    exit 1
fi

# Extract Node
tar -xf node-v18.16.0-linux-arm64.tar.xz
# Install Node
cd node-v18.16.0-linux-arm64
sudo cp -R * /usr/local/

# Add to the end of the bashrc file this export
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc
# Apply the changes to the current terminal session
source ~/.bashrc

## TODO: call here the future script of the solana wallet, for now this script just installs Node
echo "Installing Node finished!"
