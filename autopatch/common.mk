TYPE = Patch
APP_ID = org.webosinternals.patches.${NAME}
HOMEPAGE = http://www.webos-internals.org/wiki/Portal:Patches_to_webOS
MAINTAINER = WebOS Internals <support@webos-internals.org>
DEPENDS = org.webosinternals.patch, org.webosinternals.diffstat
FEED = WebOS Patches
LICENSE = MIT License Open Source
META_GLOBAL_VERSION = 1
WEBOS_VERSIONS = 1.1.3 1.2.1 1.3.1 1.3.5
#POSTINSTALLFLAGS = RestartLuna
#POSTREMOVEFLAGS = RestartLuna
ifneq ("${META_SUB_VERSION}","")
META_VERSION = ${META_GLOBAL_VERSION}-${META_SUB_VERSION}
else
META_VERSION = ${META_GLOBAL_VERSION}
endif

.PHONY: package
ifneq ("${VERSIONS}", "")
package:
	for v in ${WEBOS_VERSIONS} ; do \
		${MAKE} VERSIONS= DUMMY_VERSION=0 VERSION=$${v}-0 package ; \
	done; \
	for v in ${VERSIONS} ; do \
	  ${MAKE} VERSIONS= VERSION=$${v} package ; \
	done
else
package: ipkgs/${APP_ID}_${VERSION}_all.ipk
endif

ifneq ("${DUMMY_VERSION}", "")
WEBOS_VER:=$(shell echo ${VERSION} | tr -d '\-0')
DESCRIPTION='This package is not currently available for WebOS ${WEBOS_VER}.  This package may be installed as a placeholder to notify you when an update is available.  NOTE: This is simply an empty package placeholder, it will not affect your device in any way'
CATEGORY=Unavailable
SRC_GIT=
DEPENDS=
POSTINSTALLFLAGS=
POSTUPDATEFLAGS=
POSTREMOVEFLAGS=

build/.built-${VERSION}:
	rm -rf build/all
	mkdir -p build/all
	touch $@
else
.PHONY: unpack
unpack: build/.unpacked-${VERSION}

.PHONY: build
build: build/.built-${VERSION}

build/.meta-${META_VERSION}:
	touch $@

build/.built-extra-${VERSION}:
	touch $@

build/.built-${VERSION}: build/.unpacked-${VERSION} build/.meta-${META_VERSION}
	rm -rf build/all
	mkdir -p build/all/usr/palm/applications/${APP_ID}
	install -m 644 build/src-${VERSION}/${PATCH} build/all/usr/palm/applications/${APP_ID}/
	touch $@
	${MAKE} build/.built-extra-${VERSION}

build/all/CONTROL/prerm: build/.unpacked-${VERSION}
	mkdir -p build/all/CONTROL
	sed -e 's|PATCH_NAME=|PATCH_NAME=$(shell basename ${PATCH})|' \
			-e 's|APP_DIR=|APP_DIR=$$IPKG_OFFLINE_ROOT/usr/palm/applications/${APP_ID}|' ../prerm > build/all/CONTROL/prerm
	chmod ugo+x $@

build/all/CONTROL/postinst: build/.unpacked-${VERSION}
	mkdir -p build/all/CONTROL
	sed -e 's|PATCH_NAME=|PATCH_NAME=$(shell basename ${PATCH})|' \
			-e 's|APP_DIR=|APP_DIR=$$IPKG_OFFLINE_ROOT/usr/palm/applications/${APP_ID}|' ../postinst > build/all/CONTROL/postinst
	chmod ugo+x $@
endif

.PHONY: clobber
clobber::
	rm -rf build

include ../../support/package.mk
