#!/usr/bin/env bash
echo "[*] Installing dependencies..."
sudo apt update && sudo apt install python3 python3-pip curl -y
pip3 install aiohttp beautifulsoup4 lxml --break-system-packages 2>/dev/null || pip3 install aiohttp beautifulsoup4 lxml

echo "[*] Downloading OSINT Email Hunter..."
# RAW গিটহাব ইউআরএল থেকে সরাসরি 'hunter' কোডটি ডাউনলোড করে সিস্টেমে সেটআপ করবে
sudo curl -sSL -o /usr/local/bin/hunter githubusercontent.com

echo "[*] Setting executable permissions..."
sudo chmod +x /usr/local/bin/hunter

echo "[✔] Setup Complete! You can now use the 'hunter' command anywhere."
