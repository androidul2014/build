TYPE = Linux Application
NAME = $(shell basename $(shell pwd))
VERSION = 1.2.1-0
TITLE = Extract PDF Viewer Application
DESCRIPTION = Extracts the PDF Viewer Application so that it can be patched.
APP_ID = org.webosinternals.${NAME}
MAINTAINER = WebOS Internals <support@webos-internals.org>
CATEGORY = Utilities
ICON = http://www.webos-internals.org/images/7/71/Icon_WebOSInternals_Patches_Pdfviewer.png

.PHONY: package
package: ipkgs/${APP_ID}_${VERSION}_all.ipk
include ../../support/package.mk
include ../../support/download.mk


.PHONY: unpack
unpack: build/.unpacked

build/.unpacked:
	rm -rf build
	mkdir -p build
	touch $@

build/all/CONTROL/postinst: build/.unpacked
	mkdir -p build/all/CONTROL
	cp postinst build/all/CONTROL/postinst
	chmod ugo+x $@

build/all/CONTROL/prerm: build/.unpacked
	mkdir -p build/all/CONTROL
	cp prerm build/all/CONTROL/prerm
	chmod ugo+x $@

.PHONY: build
build: build/.built-${VERSION}

build/.built-${VERSION}: build/.unpacked
	rm -rf build/all
	mkdir -p build/all/usr/palm/applications/${APP_ID}
	touch $@

.PHONY: clobber
clobber::
	rm -rf build
