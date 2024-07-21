#!/bin/bash

# #####    ##    ####  #    #         #####  #####   ####  ###### # #      ######
# #    #  #  #  #      #    #         #    # #    # #    # #      # #      #
# #####  #    #  ####  ######         #    # #    # #    # #####  # #      #####
# #    # ######      # #    #         #####  #####  #    # #      # #      #
# #    # #    # #    # #    #         #      #   #  #    # #      # #      #
# #####  #    #  ####  #    # ####### #      #    #  ####  #      # ###### ######

# Profile file. Runs on login

export EDITOR="vim"
export VISUAL="vim"
export TERMINAL="kitty"
export BROWSER="firefox"
export READER="zathura"
export WM="bspwm"

# xdg directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/1000"

# Clean up
export LESSHISTFILE="-"
export HISTFILE="$XDG_STATE_HOME/bash/history"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export XAUTHORITY="$XDG_RUNTIME_DIR/.Xauthority"
export VIMINIT='source $XDG_CONFIG_HOME/vim/vimrc'
export VIMDOTDIR=$XDG_CONFIG_HOME/vim

# Source bashrc
[ -f $XDG_CONFIG_HOME/bash/bashrc ] && source $XDG_CONFIG_HOME/bash/bashrc

# Start graphical server if bspwm not already running
if [ "$(tty)" = "/dev/tty1" ]; then
    pgrep -x bspwm || exec startx
fi
