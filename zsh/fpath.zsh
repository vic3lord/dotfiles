# add each topic folder to fpath so that they can add functions and completion scripts
for dir ($DOTFILES/*) if [ -d $dir ]; then  fpath=($fpath $dir); fi;

fpath=($fpath $HOMEBREW/share/zsh/site-functions)
