PLUG_PATH="~/.local/share/nvim/site/autoload/plug.vim"
if [ ! -f $PLUG_PATH ]
do
	curl -fLo $PLUG_PATH --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	nvim +PlugInstall +qall
done

if [ ! -e ~/.config/nvim ]
then
	ln -s $HOME/.dotfiles/nvim/dotconfig ~/.config/nvim
fi
