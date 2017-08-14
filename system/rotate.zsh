function rotate() {
	local location="${HOME}/.ssh"
	local key="id_ed25519"

	echo "=> please enter passphrase to lock the key"
	read -s passphrase

	if [ -z $passphrase ]
	then
		echo "=> passphrase must be provided"
	else
		echo "=> backing up ssh keys to ${location}/old"
		mv $location/$key{,.pub} $location/old
		echo "=> generating new set of keys"
		ssh-keygen -q -t ed25519 -f $location/$key -N $passphrase
		echo "=> done"
	fi
}
