# AutoJump
if [[ "$OSTYPE" == darwin* ]]
then
	[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi
