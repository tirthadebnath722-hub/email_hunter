#!/usr/bin/env bash

# UI Color Codes for Professional Output
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}[*] Updating system repositories & installing core tools...${NC}"
sudo apt update && sudo apt install python3 python3-pip curl -y

echo -e "${BLUE}[*] Installing mandatory Python OSINT libraries...${NC}"
# Securely install packages bypassing Kali/Ubuntu breaking system rules
pip3 install aiohttp beautifulsoup4 lxml --break-system-packages 2>/dev/null || pip3 install aiohttp beautifulsoup4 lxml

# Check if the execution binary exists in the current repository path
if [ -f "hunter" ]; then
    echo -e "${BLUE}[*] Deploying 'hunter' to global path (/usr/local/bin/hunter)...${NC}"
    sudo cp hunter /usr/local/bin/hunter
    sudo chmod +x /usr/local/bin/hunter
    echo -e "${GREEN}[✔] Setup Complete! You can now use the 'hunter' command anywhere.${NC}"
else
    echo -e "${RED}[✘] Critical Error: 'hunter' script file missing in the current folder!${NC}"
    exit 1
fi
