#!/bin/bash

sudo apt-get update
sudo apt-get install git
sudo apt-get install mercurial
sudo apt-get install zsh
sudo apt-get install direnv
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


sudo apt install gnome-tweaks gnome-shell-extensions dconf-editor gnome-weather kupfer
sudo snap install communitheme
sudo snap install vlc

sudo snap install slack
sudo snap install vscode --classic
# set up the dock
gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'firefox_dev.desktop', 'slack_slack.desktop', 'code.desktop', 'org.gnome.Terminal.desktop', 'gnome-control-center.desktop', 'software-properties-gtk.desktop', 'org.gnome.Software.desktop']"