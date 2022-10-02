if [ "$(uname)" == "Darwin" ]
then
	echo "› macos softwareupdate"
	sudo softwareupdate -i -a
	$(dirname $0)/defaults.sh
fi
