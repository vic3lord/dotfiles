source "$HOMEBREW/Caskroom/gcloud-cli/latest/google-cloud-sdk/completion.zsh.inc"

function __g {
	_arguments "1: :($(gcloud config configurations list --format='value(name)'))"
}

compdef __g g
