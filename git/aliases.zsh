alias gl="git pull --rebase"
alias gwip="git wip && git push"

# gitignore.io
# gi list to get all supported types
function gi() {
	curl -L -s https://www.gitignore.io/api/$@
}

function changelog() {
	local d=$1
	local all=$2

	if [[ $all == "all" ]]
	then
		for repo in $(ls -d */ | cut -f1 -d'/')
		do
			if [ -d $repo/.git ]
			then
				cd $repo
				git log --author="Or Elimelech" --pretty=format:"%h - %an, %ar : %s" --after="$d"
				cd ../
			fi
		done
	else
		git log --author="Or Elimelech" --pretty=format:"%h - %an, %ar : %s" --after="$d"
	fi
}
