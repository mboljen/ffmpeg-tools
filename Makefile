NAME=ffmpeg-tools
VERSION=0.0.1

BIN:=$(addprefix ffmpeg-, audioshift cattsfile convert cropdetect fadeinout gamma watermark)

DIRS=etc bin share
INSTALL_DIRS=`find $(DIRS) -type d 2>/dev/null`
INSTALL_FILES=`find $(DIRS) -type f 2>/dev/null`
DOC_FILES=$(wildcard *.md *.txt)

PKG_DIR=pkg
PKG_NAME=$(NAME)-$(VERSION)
PKG=$(PKG_DIR)/$(PKG_NAME).tar.gz
SIG=$(PKG_DIR)/$(PKG_NAME).asc

PREFIX?=/usr/local
DOC_DIR=$(PREFIX)/share/doc/$(PKG_NAME)

MAN_DIR=share/man/man1
MAN=$(addprefix $(MAN_DIR)/, $(addsuffix .1.gz, $(BIN)))

build: $(MAN) $(PKG)

all: $(MAN) $(PKG) $(SIG)

pkg:
	mkdir -p $(PKG_DIR)

$(PKG): pkg
	git archive --output=$(PKG) --prefix=$(PKG_NAME)/ HEAD

man:
	mkdir -p $(MAN_DIR)

$(MAN): man

$(MAN_DIR)/%.1.gz: bin/%
	help2man --no-discard-stderr --version-string=${VERSION} $< | gzip -9 > $@

sign: $(SIG)

$(SIG): $(PKG)
	gpg --sign --detach-sign --armor $(PKG)

clean:
	rm -f $(MAN) $(PKG) $(SIG)

test:

tag:
	git tag v$(VERSION)
	git push --tags

release: $(PKG) $(SIG) tag

install:
	for dir in $(INSTALL_DIRS); do mkdir -p $(PREFIX)/$$dir; done
	for file in $(INSTALL_FILES); do cp $$file $(PREFIX)/$$file; done
	mkdir -p $(DOC_DIR)
	cp -r $(DOC_FILES) $(DOC_DIR)/

uninstall:
	for file in $(INSTALL_FILES); do rm -f $(PREFIX)/$$file; done
	rm -rf $(DOC_DIR)

.PHONY: build sign man clean test tag release install uninstall all
