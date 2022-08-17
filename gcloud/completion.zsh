source "$BREW_PATH/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

function __g {
	_arguments "1: :($(gcloud config configurations list --format='value(name)'))"
}

compdef __g g
