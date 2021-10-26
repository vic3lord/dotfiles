PLUG_PATH="~/.local/share/nvim/site/autoload/plug.vim"
if [ ! -f $PLUG_PATH ]
then
	curl -fLo $PLUG_PATH --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	nvim +PlugInstall +qall
fi

if [ ! -f ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]
then
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

if [ ! -e ~/.config/nvim ]
then
	ln -s $HOME/.dotfiles/nvim/dotconfig ~/.config/nvim
fi
