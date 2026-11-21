if [ ! -d ~/.config/rex ]
then
  mkdir -p ~/.config/rex
fi

if [ ! -e ~/.config/rex/init.lua ]
then
	ln -s $HOME/.dotfiles/rex/init.lua ~/.config/rex/init.lua
fi
