#
# Author: Or Elimelech
#
# Desc: Sets socks proxy server on your machine using ssh -D (socksv5)
# Support Darwin
#
function usage() {
	echo "Usage: set-proxy [state] [setup] user@example.com"
	echo
	echo "Examples:"
	echo "  set-proxy setup localhost 9000 user@example.com   # turn on socks proxy pointing to localhost:9000 with ssh socks to example.com"
	echo "  set-proxy state on user@example.com               # turn on proxy and set up ssh socks server"
	echo "  set-proxy state off                               # turn off proxy"
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

function set-proxy() {
	case $1 in
	state)
		PORT="$(get-proxy | grep Port | cut -d: -f2)"
		if [[ "$2" == "on" ]]
		then
			_start-proxy-server $PORT $3 && \
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
	-help|-h|help)
		usage
		;;
	*)
		echo "Invalid argument"
		usage
	esac
}
