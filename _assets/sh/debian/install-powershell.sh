#!/bin/sh

sudo apt update
sudo apt install -y ca-certificates curl gnupg

# Save the public repository GPG keys
curl https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --yes --dearmor --output /usr/share/keyrings/microsoft.gpg

# Register the Microsoft Product feed
sudo echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/microsoft-debian-bullseye-prod bullseye main" > /etc/apt/sources.list.d/microsoft.list

# Install PowerShell
sudo apt update && sudo apt install -y powershell

# Start PowerShell
pwsh
