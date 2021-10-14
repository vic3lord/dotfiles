# Docker containers instead of installed apps

function contained() {
	docker run -it --rm -v $(pwd):/workspace -w /workspace $@
}

alias mongo='contained mongo:4 mongo'
alias mongoexport='contained mongo:4 mongoexport'
alias mongodump='contained mongo:4 mongodump'
alias mongorestore='contained mongo:4 mongorestore'
alias crystal='contained crystallang/crystal crystal'
alias promtool='contained --entrypoint promtool prom/prometheus'
alias goreleaser='contained -e GITHUB_TOKEN goreleaser/goreleaser'
