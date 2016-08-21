#!/usr/bin/env sh
#
# install oh-my-zsh

if [ ! -d ~/.oh-my-zsh ]
then
	echo "Installing oh-my-zsh"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
