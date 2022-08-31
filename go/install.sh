# Go packages to install
readonly PACKAGES=(
	github.com/bufbuild/buf-language-server/cmd/bufls@latest
)

if which go > /dev/null 2>&1
then
	for pkg in ${PACKAGES[@]}
	do
		go install $pkg
	done
fi
