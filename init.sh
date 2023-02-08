#!/bin/bash

# if ~/.fonts dir not exist, then create it.
if [ ! -d "$HOME/.fonts" ] ; then
    mkdir $HOME/.fonts
    echo -e "Directory ~/.fonts/ created.\n"
fi
