alias g='gcloud config configurations activate'
alias gssh='gcloud beta compute ssh --ssh-key-file ~/.ssh/id_ed25519 --tunnel-through-iap'

# purge cdn
# pcdn service-name-here "/some-path/*"
function pcdn() {
	local urlmap=$1
	local urlpath=$2
	local name=$(gcloud compute url-maps list --filter="name~$urlmap" --format='value(name)')
	echo "invalidating path $urlpath for $name"
	gcloud compute url-maps invalidate-cdn-cache $name --path "$urlpath"
}

export CLOUDSDK_PYTHON=python3
