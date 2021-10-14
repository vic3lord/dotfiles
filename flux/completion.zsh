if which flux > /dev/null 2>&1
then
	source <(flux completion zsh) && compdef _flux flux
fi
