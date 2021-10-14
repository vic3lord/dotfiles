if which kubectl > /dev/null 2>&1
then
	source <(kubectl completion zsh)
fi

function __k {
	_arguments "1: :($(kubectl config get-contexts --output='name'))"
}

compdef __k k

# Minikube
if which minikube > /dev/null 2>&1
then
	source <(minikube completion zsh)
fi
