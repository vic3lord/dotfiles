if [ ! -e ~/.config/newsboat ]
then
	mkdir -p $HOME/.local/share/newsboat
	ln -s $HOME/.dotfiles/newsboat/dotconfig $HOME/.config/newsboat
fi
