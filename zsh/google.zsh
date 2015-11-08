alias gssh='gcloud compute ssh'

if [ $(uname) == "Darwin" ]
then
	source "/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
	source "/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
fi
