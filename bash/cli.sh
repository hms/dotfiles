# Use vi-mode (escape to go into “normal” mode and j,k to scroll through
# history, navigate lines with bw, &c.)
set -o vi

# Make bash check its window size after each command, to keep $LINES and
# $COLUMNS correct. There is no equivilent for zsh
if [ $SHELL = "/bin/bash" ]; then
	shopt -s checkwinsize # bash
fi

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
