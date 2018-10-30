# Docker containers instead of installed apps

function contained() {
	docker run -it --rm -v $(pwd):/workspace -w /workspace $@
}

alias mongo='contained mongo:4 mongo'
