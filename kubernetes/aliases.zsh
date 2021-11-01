alias k='kubectl config use-context'
alias kca='kubectl get --all-namespaces'
alias kgp='kubectl get pods'

function cronjobjob() {
	local job=$1
	local ns=${2:-default}
	kubectl -n $ns create job --from=cronjob/$job
}

alias spdemo="gcloud container clusters get-credentials sp-demo --region us-east1-b --project stackpulse-demo ; gcloud config set project stackpulse-demo"
alias spdev="gcloud container clusters get-credentials sp-development --region europe-west1 --project stackpulse-development ; gcloud config set project stackpulse-development"
alias spplaybooks="gcloud container clusters get-credentials sp-playbooks --region us-central1 --project stackpulse-playbooks ; gcloud config set project stackpulse-playbooks"
alias spprd="gcloud container clusters get-credentials sp-production --region us-central1 --project stackpulse-production ; gcloud config set project stackpulse-production"
alias spstg="gcloud container clusters get-credentials sp-staging --region europe-west1 --project stackpulse-staging ; gcloud config set project stackpulse-staging"