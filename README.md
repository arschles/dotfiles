# dotfiles

This repository contains dotfiles and other configurations that match my preferences for working on the macOS or Linux (primarily Debian variants) platforms. 

It uses [Nix](https://nixos.org/) and [Yadm](https://thelocehiliosan.github.io/yadm/) to provision and install almost everything.

## Installing

To start, you'll need to create SSH keys and upload them to GitHub so that Yadm can download this repository onto the machine.

First, create the key:

```shell
sudo apt update
sudo apt install ssh
ssh-keygen -t rsa -b 4096 -C "aaron@ecomaz.net"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
```

Next, add it to GitHub. Here's how to print out the key. Do this and then copy it onto your clipboard:

```shell
cat ~/.ssh/id_rsa.pub
```

Then, go to [github.com/settings/ssh/new](https://github.com/settings/ssh/new), name the key (for example: "My new machine!") in the Title box, and paste the public key value into the "Key" box

## Install Nix, then Yadm

This part is a bit roundabout. You'll do this:

- Install Nix
- Use Nix to install Yadm
- Use Yadm to download this repository

First, [install Nix](https://nixos.org/download.html) (this will require root access):

```shell
curl -L https://nixos.org/nix/install | sh
```

Then, instal Yadm:

```shell
nix-env -iA nixpkgs.yadm
```

And finally, use Yadm to install these dotfiles:

```shell
yadm clone https://github.com/arschles/dotfiles.git
```

## Install Everything Else

These steps are a bit long but worth it. You can now keep your machine up to date with all changes to this dotfiles repository, forever.

All of the packages are specified in [config.nix](/.config/nixpkgs/config.nix) and installable with the Nix package manager. The above steps purposely don't install everything in that file because that can take a while. Do the install with the follow command:

```shell
nix-env -iA nixpkgs.myPackages
```
