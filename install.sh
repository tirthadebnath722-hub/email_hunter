#!/usr/bin/env bash
echo "[*] Installing dependencies..."
apt update && apt install python3 python3-pip curl -y
pip3 install aiohttp beautifulsoup4 lxml --break-system-packages 2>/dev/null || pip3 install aiohttp beautifulsoup4 lxml

echo "[*] Downloading OSINT Email Hunter..."
curl -sSL -o /usr/local/bin/hunter githubusercontent.com

echo "[*] Setting executable permissions..."
chmod +x /usr/local/bin/hunter

echo "[✔] Setup Complete! You can now use the 'hunter' command anywhere."
