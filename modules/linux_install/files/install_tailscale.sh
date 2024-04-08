#!/bin/bash

set -e

sudo apt-get install -y tailscale
sudo tailscale up
