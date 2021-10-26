if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]
do
	curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	nvim +PlugInstall +qall
done

if [ ! -e ~/.config/nvim ]
then
	ln -s $HOME/.dotfiles/nvim/dotconfig ~/.config/nvim
fi
