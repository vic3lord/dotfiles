SRC=$HOME/.dotfiles
DOTFILES="vimrc tmux.conf gitconfig zshrc zsh"

# install oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]
then
	echo "Installing oh-my-zsh..."
	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

# install Vundle
if [ ! -d ~/.vim/bundle/Vundle.vim ]
then
	git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	mkdir $HOME/.config
	ln -s $HOME/.vim $HOME/.config/nvim
	ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim
fi

# symlinks to dotfiles
for dotfile in ${DOTFILES[@]}
do
	if [ ! "$(readlink $HOME/.${dotfile})" == "$HOME/.dotfiles/${dotfile}" ]
	then
		if [ -f $HOME/.$dotfile ]
		then
			rm $HOME/.$dotfile
		fi
		echo "Creating a symlink for ${dotfile}..."
		ln -s $SRC/$dotfile $HOME/.$dotfile
	fi
done
