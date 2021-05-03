if [[ ! $TERM =~ screen ]] && [ -z $TMUX ]
then
	if which tmux > /dev/null 2>&1
	then
		tmux attach || tmux
	fi
fi
