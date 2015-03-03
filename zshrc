# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="sorin"

# Special dirs
zstyle ':completion:*' special-dirs true

#
# Aliases
#
# Brew GIT Version
alias git="/usr/local/bin/git"

# Override tig options to show gpg signatures
alias tig="tig --show-signature"

# Knife aliases
alias kbl="knife block list"
alias kbu="knife block use"

#
# ZSH Plugins
#
plugins=(git ruby golang docker gem github vagrant knife brew jump tmuxinator)

source $ZSH/oh-my-zsh.sh

#
# User configuration
#

# GOPATH
export GOPATH="/Users/$USER/BTSync/Projects/go"

# PATH
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:${GOPATH}/bin"

# Preferred editor for local and remote sessions
export EDITOR='vim'

# ZSH Vim Mode
bindkey -v
export KEYTIMEOUT=1

# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Load ~/.zsh directory
source ~/.zsh/*.zsh
