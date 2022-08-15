if [ ! -e ~/.ssh/config ]
then
	ln -s $HOME/.dotfiles/ssh/config ~/.ssh/config
fi
