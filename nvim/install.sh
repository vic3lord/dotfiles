if [ ! -d ~/.config ]
then
  mkdir ~/.config
fi

if [ ! -e ~/.config/nvim ]
then
	ln -s $HOME/.dotfiles/nvim/config ~/.config/nvim
fi
