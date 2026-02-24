# Docker containers instead of installed apps
function ctr() {
	container run -it --rm -v $(pwd):/workspace -w /workspace $@
}

alias promtool='ctr --entrypoint promtool prom/prometheus'
