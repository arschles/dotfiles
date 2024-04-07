#!/bin/bash

set -e

curl -o ./install_starship.sh -sS https://starship.rs/install.sh
chmod +x ./install_starship.sh
./install_starship.sh --yes
echo 'eval "$(starship init bash)"' >> ~/.bashrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
rm ./install_starship.sh
