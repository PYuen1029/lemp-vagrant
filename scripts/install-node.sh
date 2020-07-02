#!/usr/bin/env bash

echo ">>> Installing node"
apt-get update
apt install nodejs

echo ">>> Installing npm"
sudo apt install build-essential checkinstall libssl-dev
apt install npm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.1/install.sh | bash
nvm install 12.18.2

echo ">>> Installing yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn
