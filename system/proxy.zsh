#
# Author: Or Elimelech
#
# Desc: Sets socks proxy server on your machine using ssh -D (socksv5)
# Support Darwin
#
function usage() {
	cat <<- EOF
	USAGE: set-proxy [state] [setup] user@example.com

	Socks proxy setup.

	OPTIONS:
	  setup           setup proxy settings (local ip and port)
	  state           turn socks proxy on/off

	EXAMPLES:
	  set-proxy setup localhost 9000 user@example.com   turn on socks proxy
	  set-proxy state on user@example.com               turn on proxy and set up ssh socks server
	  set-proxy state off                               turn off proxy
	EOF
}

function get-proxy() {
	networksetup -getsocksfirewallproxy Wi-Fi
}

function _start-proxy-server() {
	local port=$1
	local server=$2
	ssh -D $port -N -f $server
}

function _stop-proxy-server() {
	ps aux | grep -v grep | grep 'ssh -D' | awk '{print $2}' | xargs kill
}

function set-proxy() {
	local flag=$1
	case $flag in
	state)
		local port="$(get-proxy | grep Port | cut -d: -f2)"
		if [[ "$2" == "on" ]]
		then
			_start-proxy-server $port $3 && \
			networksetup -setsocksfirewallproxystate Wi-Fi on
		else
			networksetup -setsocksfirewallproxystate Wi-Fi off
			_stop-proxy-server
		fi
		;;
	setup)
		_start-proxy-server $3 $4 && \
		networksetup -setsocksfirewallproxy Wi-Fi $2 $3
		;;
	*)
		usage
	esac
}
