#!/bin/bash
set -e

curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh

Miniforge3-$(uname)-$(uname -m).sh -b -f
