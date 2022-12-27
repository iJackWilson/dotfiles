# dotfiles

This repository contains various files to configure a MacOS environment (software and terminal configuration). This includes:

* .profile, .exports, .aliases & .functions dotfiles
* iTerm2 preferences file
* Global .gitignore
* SSH config
* AWS config

## Brewfile

The Brewfile contains the various programs I'd want installed on every machine. This can be automated using the Makefile (see below).

## Makefile

The Makefile can automatically create symlinks between the dotfiles listed above and the user's home directory. It can also automatically install Homebrew and run `brew bundle` to install the list of programs specified in the Brewfile.

## Repository Basic Workflow

Clone this repo in the correct directory
```
$ mkdir -p ~/Documents/src/ijackwilson
$ cd ~/Documents/src/ijackwilson
$ git clone https://github.com/ijackwilson/dotfiles
```

Set up symlinks via the Makefile
```
$ make dotfiles
```

Install Homebrew and run `brew bundle`
```
$ make brew
```

Inspired by [`0xmachos/dotfiles`](https://github.com/0xmachos/dotfiles) and [`jessfraz/dotfiles`](https://github.com/jessfraz/dotfiles)
