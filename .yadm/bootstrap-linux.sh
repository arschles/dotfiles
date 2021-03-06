#!/bin/bash

WHO=$(whoami)
if [ "${WHO}" = "root" ]
then
    echo "You're root! Don't be root. Create a new user (useradd -m USERNAME) and then run this again"
    exit
fi

chsh -s /bin/zsh

echo "Howdy! Welcome to the Linux bootstrap script"
sudo apt update
sudo apt install -y ffmpeg git mercurial zsh direnv xclip net-tools curl golang byobu direnv zsh curl wget direnv

echo "Installing rust"
curl https://sh.rustup.rs -sSf | sh -s -- -y\

echo "Installing gcc-5 (for CGo)"
sudo apt install -y gcc-5

echo "Installing Linuxbrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing Crystal"
# https://crystal-lang.org/install/on_debian/
curl -sSL https://dist.crystal-lang.org/apt/setup.sh | sudo bash
curl -sL "https://keybase.io/crystal/pgp_keys.asc" | sudo apt-key add -
echo "deb https://dist.crystal-lang.org/apt crystal main" | sudo tee /etc/apt/sources.list.d/crystal.list
sudo apt-get update
sudo apt install crystal


echo "Installing Hugo"
brew install hugo

echo "Installing the GitHub CLI"
curl -o ./gh.deb -L https://github.com/cli/cli/releases/download/v0.6.1/gh_0.6.1_linux_amd64.deb
sudo apt install -y git && sudo dpkg -i ./gh.deb
rm ./gh.deb

echo "Installing snap"
sudo apt install snapd

echo "Installing ao - MS Todos"
sudo snap install ao
# echo "Installing oh-my-zsh"
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# the oh-my-zsh installer script overwrites things like the zshrc, so copy the original back later
cp ~/.yadm/zshrc ~/.zshrc
touch ./aliases-linux.sh
cp ~/.yadm/aliases-linux ~/.aliases
source ~/.aliases
source ~/.zshrc
touch ~/.zprofile
cp ~/.yadm/zprofile ~/.zprofile

echo "Installing Go"
brew install go

echo "Installing Keylight CLI"
go get github.com/mdlayher/keylight/cmd/keylight

echo "Installing caddy"
curl -o caddy -L https://github.com/caddyserver/caddy/releases/download/v2.0.0-beta.20/caddy2_beta20_linux_amd64
sudo chmod +x caddy
sudo mv caddy /usr/local/bin/caddy

echo "Installing Azure CLI"
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

echo "Installing k9s Kubernetes CLI tool"
brew install k9s

echo "Installing Starship"
brew install starship

echo "Installing thefuck"
brew install thefuck

echo "Installing nvidia drivers for ubuntu (disabled)"
echo "See: http://www.linuxandubuntu.com/home/how-to-install-latest-nvidia-drivers-in-linux"
# sudo apt-get purge nvidia*
# sudo add-apt-repository ppa:graphics-drivers
# sudo apt-get update
# sudo apt-get install nvidia-driver-455
# echo "To complete the driver install, reboot the computer after everything else is installed"
# echo "You may want to freeze the driver version so you don't get burned by updates."
# echo "Here's how you do that:"
# echo "sudo apt-mark hold nvidia-driver-455"
