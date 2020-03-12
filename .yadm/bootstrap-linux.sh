#!/bin/bash

echo "Howdy! Welcome to the Linux bootstrap script"
sudo apt-get update
sudo apt-get update
sudo apt-get install ffmpeg git mercurial zsh direnv xclip gnome-tweaks-tools net-tools
sudo apt install byobu golang direnv
touch ./aliases-linux.sh
cp ./aliases-linux.sh ~/.aliases
source ~/.aliases

echo "Changing shells to zsh"
chsh -s $(which zsh)

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing rust"
curl https://sh.rustup.rs -sSf | sh
