#!/bin/bash

if [ -f ~/.tmux.conf ]; then
    echo -n ".bashrc exists. Do you want to delete it?[Y/n]: "
    read destiny
    if [ "$destiny" = "" ] || [ "$destiny" = "Y" ] || [ "$destiny" = "y" ]; then
        rm ~/.tmux.conf
    else
        echo "Exiting..."
        exit
    fi
fi

if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "Copying .tmux.conf to ~/.tmux.conf"
cp .tmux.conf ~/.tmux.conf
