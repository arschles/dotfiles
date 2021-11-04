#!/bin/bash

WHO=$(whoami)
if [ "${WHO}" = "root" ]
then
    echo "You're root! Don't be root. Create a new user (useradd -m USERNAME) and then run this again"
    exit
fi

echo "Howdy! Welcome to the Linux bootstrap script"

cp ~/.yadm/zshrc ~/.zshrc
touch ./aliases-linux.sh
cp ~/.yadm/aliases-linux ~/.aliases
source ~/.aliases
source ~/.zshrc
touch ~/.zprofile
cp ~/.yadm/zprofile ~/.zprofile

echo "Installing bin tool"
curl -o ./bin -L https://github.com/marcosnils/bin/releases/download/v0.8.0/bin_0.8.0_Linux_x86_64
./bin install github.com/marcosnils/bin
rm ./bin
