export FZF_DEFAULT_COMMAND='fd --type f --color=never'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d . --color=never'

# Follow the Rex theme: draw with the terminal's 16 ANSI colors instead of
# fzf's fixed 256-color palette, so light/dark switches apply.
export FZF_DEFAULT_OPTS="--color=16${FZF_DEFAULT_OPTS:+ $FZF_DEFAULT_OPTS}"
