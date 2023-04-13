#!/bin/bash
echo "Checking if file exists..."
# Check if Electrum tar.gz file exists in the current directory
if [ ! -f Electrum-4.3.4.tar.gz ]; then
    echo "Electrum-4.3.4.tar.gz file not found in the current directory."
    echo "Please copy the file to this directory and try again."
    exit 1
fi
echo "Installing python"
# Install Python 3
sudo apt-get update
sudo apt-get install -y python3

# Install dependencies for Electrum
sudo apt-get install -y python3-pyqt5 libsecp256k1-0

echo "Extracting Electrum"
# Extract Electrum
tar -xvf Electrum-4.3.4.tar.gz

# Install Electrum
cd Electrum-4.3.4
echo "Installing Electrum"
python3 -m pip install --user .
echo "Electrum installation finished"