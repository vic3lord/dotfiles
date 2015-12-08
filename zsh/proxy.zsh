# Set socks proxy
# Support Darwin
function set-proxy() {
	if [[ "$1" == "state" ]]
	then
		PORT="$(get-proxy | grep Port | cut -d: -f2)"
		if [[ "$2" == "on" ]]
		then
			_start-proxy-server $PORT $3 && \
			networksetup -setsocksfirewallproxystate Wi-Fi on
		else
			networksetup -setsocksfirewallproxystate Wi-Fi off
			_stop-proxy-server
		fi
	else
		_start-proxy-server $2 $3 && \
		networksetup -setsocksfirewallproxy Wi-Fi $1 $2
	fi
}

function get-proxy() {
	networksetup -getsocksfirewallproxy Wi-Fi
}

function _start-proxy-server() {
	ssh -D $1 -N -f $2
}

function _stop-proxy-server() {
	ps aux | grep -v grep | grep 'ssh -D' | awk '{print $2}' | xargs kill
}
