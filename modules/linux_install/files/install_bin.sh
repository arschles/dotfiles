#!/bin/bash

set -e

echo "Installing bin tool"
curl -o ./bin -L https://github.com/marcosnils/bin/releases/download/v0.8.0/bin_0.8.0_Linux_x86_64
./bin install github.com/marcosnils/bin
rm ./bin
