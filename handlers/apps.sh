#!/bin/bash

## Install Casks application
echo "It's goint to install ${ac_casks_app[*]}"
brew cask install ${ac_casks_app[*]}
