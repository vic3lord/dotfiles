if [ ! -f ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]
then
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

if [ ! -e ~/.config/nvim ]
then
	ln -s $HOME/.dotfiles/nvim/dotconfig ~/.config/nvim
fi
