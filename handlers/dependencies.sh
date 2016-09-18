#!/bin/bash

## Command Line Tools for Xcode
xcode-select --install

## Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Install brew-cask
brew tap caskroom/cask

## Install Foundation Formulars
brew install zsh git vim mackup

## Install Dropbox to synchronize
brew cask install dropbox iterm2

## Install dependency packages
brew install ${ac_dep[*]}
