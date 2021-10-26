if test ! $(which linkerd)
then
	curl -sL https://run.linkerd.io/install | sh
fi
