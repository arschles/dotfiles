#!/bin/bash

WHO=$(whoami)
if [ "${WHO}" = "root" ]
then
    echo "You're root! Don't be root. Create a new user (useradd -m USERNAME) and then run this again"
    exit
fi

echo "Howdy! Welcome to the Linux bootstrap script"
sudo apt update
sudo apt install ffmpeg git mercurial zsh direnv xclip net-tools curl golang byobu direnv zsh curl wget

echo "Installing rust"
curl https://sh.rustup.rs -sSf | sh

echo "Installing Linuxbrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing the GitHub CLI"
curl -o ./gh.deb -L https://github.com/cli/cli/releases/download/v0.6.1/gh_0.6.1_linux_amd64.deb
sudo apt install git && sudo dpkg -i ./gh.deb
rm ./gh.deb

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# the oh-my-zsh installer script overwrites things like the zshrc, so copy the original back later
cp ~/.yadm/zshrc ~/.zshrc
touch ./aliases-linux.sh
cp ~/.yadm/aliases-linux ~/.aliases
source ~/.aliases
source ~/.zshrc
touch ~/.zprofile
cp ~/.yadm/zprofile ~/.zprofile

echo "Installing caddy"
curl -o caddy -L https://github.com/caddyserver/caddy/releases/download/v2.0.0-beta.20/caddy2_beta20_linux_amd64
sudo chmod +x caddy
sudo mv caddy /usr/local/bin/caddy