# Go packages to install
readonly PACKAGES=(
	golang.org/x/tools/gopls@latest
	github.com/bufbuild/buf-language-server/cmd/bufls@latest
	github.com/go-delve/delve/cmd/dlv@latest
)

if type go &> /dev/null
then
	for pkg in ${PACKAGES[@]}
	do
		go install $pkg
	done
fi
