#!/usr/bin/env bash

echo ">>> Installing node"
apt-get update
apt install -y nodejs

echo ">>> Installing npm"
apt install -y build-essential checkinstall libssl-dev
apt install -y npm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.1/install.sh | bash
nvm install 12.18.2

echo ">>> Installing yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update -y
apt install -y yarn
