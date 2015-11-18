#!/usr/bin/env sh
#
# install oh-my-zsh

if [ ! -d ~/.oh-my-zsh ]
then
	echo "Installing oh-my-zsh"
	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi
