# kubectl config view -o jsonpath='{.contexts[0].context.namespace}'
alias kc='kubectl --namespace=production'
alias kca='kubectl get --all-namespaces'
