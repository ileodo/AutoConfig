#!/bin/bash

# Change Shell
sudo echo "/usr/local/bin/zsh" >> /etc/shells
chsh -s /usr/local/bin/zsh


# Link Documents
sudo rm -rf ~/Documents
ln -s ~/Dropbox/Documents Documents
