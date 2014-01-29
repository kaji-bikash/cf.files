#!/bin/sh

if [ ! -d "$HOME/.cf.files" ]; then
    echo "Installing CloudFactory dotfiles for the first time"
    git clone https://github.com/kajisaap/cf.files.git "$HOME/.cf.files"
    cd "$HOME/.cf.files"
    [ "$1" == "ask" ] && export ASK="true"
    LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8 rake install
else
    echo "CloudFactory dotfiles is already installed"
fi
