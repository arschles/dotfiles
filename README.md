# dotfiles

This repository contains dotfiles and stuff for my machine. Use [yadm](https://thelocehiliosan.github.io/yadm/) to install this stuff.

First, install Yadm:

```console
$ sudo apt install yadm
```

Then, install the dotfiles:

```console
yadm clone https://github.com/arschles/dotfiles.git
```

It has a bootstrap script that switches on `uname` to execute setup for Debian/Ubuntu or OS X.
