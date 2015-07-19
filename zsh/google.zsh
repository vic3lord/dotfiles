alias gssh='gcloud compute ssh'

if [ $(hostname) != "Ors-MacBook-Air.local" ]
then
	source "$HOME/google-cloud-sdk/path.zsh.inc"
	source "$HOME/google-cloud-sdk/completion.zsh.inc"
fi
