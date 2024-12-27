if [ ! -d ~/.config/ghostty ]
then
  mkdir -p ~/.config/ghostty
fi

if [ ! -e ~/.config/ghostty/config ]
then
	ln -s $HOME/.dotfiles/ghostty/config ~/.config/ghostty/config
fi
