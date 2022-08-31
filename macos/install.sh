if [ "$(uname)" == "Darwin" ]
then
	echo "› macos softwareupdate"
	sudo softwareupdate -i -a
fi

source "./defaults.sh"
