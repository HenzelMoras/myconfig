#!/bin/bash

# install build-essential
sudo apt-get install gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip build-essential

cd $(mktemp -d)
git clone https://github.com/neovim/neovim --depth 1
cd neovim
sudo checkinstall make CMAKE_BUILD_TYPE=Release install
cd ..
sudo rm -r neovim

# install lunarvim
bash <(curl -s https://raw.githubusercontent.com/ChristianChiarulli/lunarvim/master/utils/installer/install.sh)

#Done
