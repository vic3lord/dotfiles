alias l='ls -l'
alias la='ls -lah'

alias pubkey="cat ~/.ssh/id_ed25519.pub | pbcopy | echo '-> Public key copied to pasteboard.'"
alias myip='dig myip.opendns.com @resolver1.opendns.com +short'

function whoseport() {
	lsof -nPi:$1 -sTCP:LISTEN
}
