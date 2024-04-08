#!/bin/bash
set -e

curl -L -o nix_install.sh https://nixos.org/nix/install
chmod +x ./nix_install.sh
./nix_install.sh --daemon --yes
rm ./nix_install.sh
# need to restart the shell for nix pkg mgr to take effect.
# then we can install everything
#
# that install is failing unfortunately...
exec $SHELL
nix-env -iA nixpkgs.myPackages
