if [ "$(uname)" == "Darwin" ]
then
	echo "› macos softwareupdate"
	sudo softwareupdate -i -a
	./defaults.sh
fi
