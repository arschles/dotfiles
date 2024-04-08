#!/bin/bash
set -e

DL_URL="https://go.dev/dl/go1.22.2.linux-amd64.tar.gz"
FILENAME="go1.22.2.linux-amd64.tar.gz"
curl -o $FILENAME -L $DL_URL
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf $FILENAME
rm $FILENAME
