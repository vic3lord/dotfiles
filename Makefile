DOTFILES = $(shell find -H $(CURDIR) -maxdepth 2 -name '*.symlink' -not -path "*.git*")

all: dotfiles install

.PHONY: dotfiles
dotfiles:
	@echo "installing dotfiles"
	$(foreach src,$(DOTFILES),$(shell ln -sfn $(src) $(HOME)/.$(shell basename $(subst .symlink,,$(src)))))

.PHONY: install
install:
	@echo "find the installers and run them iteratively"
	find . -name install.sh | xargs -I '{}' sh -c "{}"
	@echo "› brew bundle"
	brew bundle
