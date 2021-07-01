#!/bin/bash

# install build-essential
sudo apt-get install gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip build-essential checkinstall

cd $(mktemp -d)
git clone https://github.com/neovim/neovim --depth 1
cd neovim
sudo checkinstall -y make CMAKE_BUILD_TYPE=Release install
cd ..
sudo rm -r neovim

# install lunarvim

# backup nvim config
mv ~/.config/nvim ~/.config/nvim.bak

sudo apt install -y xclip python3-pip nodejs npm ripgrep fzf ranger libjpeg8-dev zlib1g-dev python-dev python3-dev libxtst-dev python3-pip

sudo npm install -g tree-sitter-cli

pip3 install ueberzug neovim neovim-remote pynvim --user

bash <(curl -s https://raw.githubusercontent.com/ChristianChiarulli/lunarvim/master/utils/installer/install.sh)


# The output of version information should include a line for: LuaJIT 
nvim -v


#Done
