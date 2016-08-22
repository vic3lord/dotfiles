if $(test $(which kubectl) 2>/dev/null)
then
	source <(kubectl completion zsh)
fi

