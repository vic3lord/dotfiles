SRC=$HOME/.dotfiles
DOTFILES="vimrc tmux.conf gitconfig zshrc zsh"
PACKAGES=$1
OS=`uname`

if [ "$PACKAGES" == "packages" ]
then
	if [ -f $SRC/packages/$OS ]
	then
		$SRC/packages/$OS
	else
		echo "Unsupported OS: ${OS}"
	fi
	echo "Install Go packages"
	for pkg in $(cat $SRC/packages/GoPackages)
	do
		go get -u $pkg
	done
fi

# install oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]
then
	echo "Installing oh-my-zsh..."
	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

# install vim-plug
if [ ! -f ~/.vim/autoload/plug.vim ]
then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	vim +PlugInstall +qall
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
