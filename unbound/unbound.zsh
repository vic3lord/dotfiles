if ! $(networksetup -getdnsservers Wi-Fi | grep -q "127.0.0.1");
then
	echo "Setting WiFi DNS to localhost"
	networksetup -setdnsservers Wi-Fi 127.0.0.1
fi
