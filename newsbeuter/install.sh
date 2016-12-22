#!/usr/bin/env sh
if [ ! -e ~/.config/newsbeuter ]
then
	mkdir -p $HOME/.local/share/newsbeuter
	ln -s $HOME/.newsbeuter $HOME/.config/newsbeuter
fi

