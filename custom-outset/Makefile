PKGTITLE="outset-custom"
PKGVERSION="1.0"
PKGID=com.github.outset.custom
PROJECT="outset-custom"

#################################################

##Help - Show this help menu
help: 
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

##  clean - Clean up temporary working directories
clean:
	rm -f ./outset*.pkg
	rm -f ./pkgroot/usr/local/outset/*/*.pyc
	find ./pkgroot -name '.DS_Store' -type f -delete

##  pkg - Create a package using pkgbuild
pkg: clean
	pkgbuild --root pkgroot --identifier ${PKGID} --version ${PKGVERSION} --ownership recommended ./${PKGTITLE}-${PKGVERSION}.pkg

dist: clean
	productbuild --root pkgroot --identifier ${PKGID} --version ${PKGVERSION} ./${PKGTITLE}-${PKGVERSION}.pkg