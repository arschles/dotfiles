#!/bin/bash

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install mercurial
brew install git
brew tap "homebrew/bundle"
brew tap "azure/draft"
brew bundle --file=~/.yadm/Brewfile

curl https://sh.rustup.rs -sSf | sh

# change to zsh and use oh-my-zsh
chsh -s /bin/zsh
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing Azure CLI"
brew update && brew install azure-cli

echo "Installing k9s Kubernetes CLI tool"
brew install k9s

echo "Installing Starship"
brew install starship

echo "Installing thefuck"
brew install thefuck

echo "Installing Fira Code Fonts"
brew tap homebrew/cask-fonts
brew install --cask font-fira-code



