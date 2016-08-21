function print_ssl() {
	openssl x509 -in $1 -inform PEM -text
}
