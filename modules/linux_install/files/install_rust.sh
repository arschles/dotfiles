#!/bin/bash

sh -e

curl \
    --proto '=https' \
    --tlsv1.2 \
    -sSf \
    -o ./install_rust.sh \
    https://sh.rustup.rs

chmod +x ./install_rust.sh
./install_rust.sh -y
rm ./install_rust.sh
