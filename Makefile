NAME=ffmpeg-tools
VERSION=0.0.1

BIN:=$(addprefix ffmpeg-, audioshift convert cropdetect fadeinout gamma merge watermark)

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

checksudo:
ifneq ($(shell id -u),0)
	$(error This command requires root privileges)
endif

install: checksudo
	for dir in $(INSTALL_DIRS); do mkdir -p $(PREFIX)/$$dir; done
	for file in $(INSTALL_FILES); do cp $$file $(PREFIX)/$$file; done
	mkdir -p $(DOC_DIR)
	cp -r $(DOC_FILES) $(DOC_DIR)/
	cp -u -t /etc etc/ffmpeg-convert.conf

uninstall: checksudo
	for file in $(INSTALL_FILES); do rm -f $(PREFIX)/$$file; done
	$(RM) -r $(DOC_DIR)

purge: uninstall
	$(RM) /etc/ffmpeg-convert.conf

.PHONY: build sign man clean test tag release install uninstall all
