# Docker containers instead of installed apps

function contained() {
	docker run -it --rm -v $(pwd):/workspace -w /workspace $@
}

alias mongo='contained mongo:3.6 mongo'
alias r10k='contained puppet/r10k'
