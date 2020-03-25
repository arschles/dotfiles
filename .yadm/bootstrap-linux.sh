#!/bin/bash

WHO=$(whoami)
if [ "${WHO}" = "root" ]
then
    echo "You're root! Don't be root. Create a new user (useradd -m USERNAME) and then run this again"
    exit
fi

echo "Howdy! Welcome to the Linux bootstrap script"
sudo apt update
sudo apt install ffmpeg git mercurial zsh direnv xclip gnome-tweaks-tools net-tools curl golang byobu direnv zsh curl
touch ./aliases-linux.sh
cp ./aliases-linux.sh ~/.aliases
source ~/.aliases

echo "Installing rust"
curl https://sh.rustup.rs -sSf | sh

echo "Installing Linuxbrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing the GitHub CLI"
curl -o ./gh.deb -L https://github.com/cli/cli/releases/download/v0.6.1/gh_0.6.1_linux_amd64.deb
sudo apt install git && sudo dpkg -i ./gh.deb
rm ./gh.deb

echo "Installing oh-my-zsh"
echo 'sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
