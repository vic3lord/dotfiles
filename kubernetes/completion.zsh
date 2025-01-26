if type kubectl &> /dev/null
then
	source <(kubectl completion zsh)
fi

function __k {
	_arguments "1: :($(kubectl config get-contexts --output='name'))"
}

compdef __k k
