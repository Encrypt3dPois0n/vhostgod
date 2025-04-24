#!/bin/bash

echo "[*] Updating system..."
sudo apt update && sudo apt upgrade -y

echo "[*] Installing dependencies..."
sudo apt install -y python3 python3-pip git build-essential libxslt-dev libxml2-dev curl jq chromium-driver

echo "[*] Installing Go tools (ffuf, subfinder, httpx)..."
if ! command -v go &> /dev/null; then
  echo "[!] Go not found. Installing Go..."
  sudo apt install -y golang
fi
go install github.com/ffuf/ffuf/v2@latest
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc && source ~/.bashrc

echo "[*] Cloning VHost God..."
git clone https://github.com/yourusername/vhost-god.git
cd vhost-god

echo "[*] Setting up Python environment..."
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

echo "[*] Setup complete!"
echo "👉 To run CLI: source venv/bin/activate && python3 vhostgod.py -d target.com"
echo "👉 To run Dashboard: source venv/bin/activate && python3 dashboard.py"
