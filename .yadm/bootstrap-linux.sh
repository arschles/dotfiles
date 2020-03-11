#!/bin/bash

sudo apt-get update
sudo apt-add-repository ppa:obsproject/obs-studio
sudo apt-get update
sudo apt-get install ffmpeg git mercurial zsh direnv xclip gnome-tweaks-tools net-tools
sudo apt install byobu golang direnv
touch ./aliases-linux.sh
cp ./aliases-linux.sh ~/.aliases
source ~/.aliases
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


curl https://sh.rustup.rs -sSf | sh
