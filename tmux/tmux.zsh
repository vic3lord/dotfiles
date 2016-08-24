if [[ ! $TERM =~ screen ]] && [ -z $TMUX ]
then
	if which tmux > /dev/null 2>&1
	then
		if tmux has-session -t $USER 2>/dev/null
		then
			tmux attach-session -t $USER
		else
			tmux new-session -s $USER
		fi
	fi
fi
