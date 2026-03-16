function cronjobjob() {
	local job=$1
	local ns=${2:-default}
	kubectl -n $ns create job --from=cronjob/$job
}

function k() {
  local context
  if [[ -z "$1" ]]
  then
    # No argument provided: open fzf to pick a context
    context=$(kubectl config get-contexts --output='name' | fzf --height 40% --reverse --header="Select Kubernetes Context")
    
    # If a context was selected (user didn't hit ESC), switch to it
    if [[ -n "$context" ]]
    then
      kubectl config use-context "$context"
    fi
  else
    # Argument provided: just run kubectl config use-context directly
    kubectl config use-context "$1"
  fi
}
