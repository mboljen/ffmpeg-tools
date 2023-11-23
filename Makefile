BASEDIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

SILENT := @

NAME = ffmpeg-tools
VERSION = 0.1

TOPTARGETS = build test install uninstall clean veryclean

PKG_DIR=pkg
PKG_NAME=$(NAME)-$(VERSION)
PKG=$(PKG_DIR)/$(PKG_NAME).tar.gz
SIG=$(PKG_DIR)/$(PKG_NAME).asc

PREFIX?=/usr/local

# Forward top targets to sub directories
$(TOPTARGETS): $(sort $(dir $(wildcard $(BASEDIR)/*/)))
	$(SILENT)$(foreach path, $^, $(MAKE) -C $(path) $@;)

all: build $(PKG) $(SIG)

release: $(PKG) $(SIG) tag

sign: $(SIG)

$(SIG): $(PKG)
	gpg --sign --detach-sign --armor $(PKG)

$(PKG): pkg
	git archive --output=$(PKG) --prefix=$(PKG_NAME)/ HEAD

pkg:
	mkdir -p $(PKG_DIR)

.PHONY: build test install uninstall clean veryclean release sign all
