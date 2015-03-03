# AutoJump
if [[ "$(uname)" == "Darwin" ]]
then
	[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi
