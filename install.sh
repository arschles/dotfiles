#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
./.yadm/bootstrap-linux.sh

cp ~/.yadm/zshrc ~/.zshrc
touch ./aliases-linux.sh
cp ~/.yadm/aliases-linux ~/.aliases
source ~/.aliases
source ~/.zshrc
touch ~/.zprofile
cp ~/.yadm/zprofile ~/.zprofile
