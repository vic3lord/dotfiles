alias gssh='gcloud compute ssh --ssh-key-file ~/.ssh/id_ed25519'

if [[ $(uname) == "Darwin" ]]
then
	source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
	source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
fi
