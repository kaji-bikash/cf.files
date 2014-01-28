#!/bin/sh

if [ ! -d "$HOME/.cf.files" ]; then
    echo "Installing CloudFactory dotfiles for the first time"
    git clone https://github.com/kajisaap/cf.files.git "$HOME/.cf.files"
    cd "$HOME/.cf.files"
    [ "$1" == "ask" ] && export ASK="true"
    rake install
else
    echo "CloudFactory dotfiles is already installed"
fi
