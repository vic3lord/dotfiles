autoload colors && colors

git_branch() {
  echo $(git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! git status -s &> /dev/null)
  then
	echo ""
  else
	if [[ $(git status --porcelain --untracked-files=no) == "" ]]
	then
	    echo ":%{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
	else
	    echo ":%{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
	fi
  fi
}

git_prompt_info () {
 ref=$(git symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

unpushed () {
  git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

directory_name() {
  echo "%{$fg[cyan]%}%1/%{$reset_color%}"
}

# set propmpt
export PROMPT=$'$(directory_name)$(git_dirty)$(need_push)› '
