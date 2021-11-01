autoload colors && colors

# set propmpt
source ${0:A:h}/git-prompt.zsh
source ${0:A:h}/gcloud-prompt.zsh

RPROMPT='%{$fg[$ZSH_GCLOUD_PROMPT_COLOR]%}($ZSH_GCLOUD_PROMPT)%{$reset_color%}'