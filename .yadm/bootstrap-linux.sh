#!/bin/bash

WHO=$(whoami)
if [ "${WHO}" = "root" ]
then
    echo "You're root! Don't be root. Create a new user (useradd -m USERNAME) and then run this again"
    exit
fi

echo "Howdy! Welcome to the Linux bootstrap script"
sudo apt-get update
sudo apt-get update
sudo apt-get install ffmpeg git mercurial zsh direnv xclip gnome-tweaks-tools net-tools
sudo apt install byobu golang direnv zsh
touch ./aliases-linux.sh
cp ./aliases-linux.sh ~/.aliases
source ~/.aliases

echo "Creating SSH keys"
ssh-keygen -t rsa -b 4096 -C "aaron@ecomaz.net"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa


echo "Changing shells to zsh"
chsh -s $(which zsh)

echo "Installing rust"
curl https://sh.rustup.rs -sSf | sh

echo "Installing the GitHub CLI"
curl -o gh.deb -L https://github.com/cli/cli/releases/download/v0.6.1/gh_0.6.1_linux_amd64.deb
sudo apt install git && sudo dpkg -i gh.deb
rm gh.deb

echo "Go add this SSH public key to Github:"
cat ~/.ssh/id_rsa.pub
echo "And then install oh-my-zsh"
echo 'sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
