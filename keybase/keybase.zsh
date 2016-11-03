function invoice() {
	keybase pgp sign --detached --infile $1 --outfile $1.asc
}
