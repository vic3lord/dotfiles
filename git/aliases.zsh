alias git="hub"
alias tig="tig --show-signature"
alias gl="git pull --rebase"

# gitignore.io
# gi list to get all supported types
function gi() {
	curl -L -s https://www.gitignore.io/api/$@
}
