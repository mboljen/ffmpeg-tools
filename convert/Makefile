NAME=ffmpeg-convert
VERSION=0.1

DIRS=bin etc share
INSTALL_DIRS=`find $(DIRS) -type d 2>/dev/null`
INSTALL_FILES=`find $(DIRS) -type f 2>/dev/null`
DOC_FILES=$(wildcard *.md *.txt)

PKG_NAME=$(NAME)-$(VERSION)

PREFIX?=/usr/local
DOC_DIR=$(PREFIX)/share/doc/$(PKG_NAME)

MAN_DIR=share/man/man1
MAN=$(addprefix $(MAN_DIR)/, $(addsuffix .1.gz, $(NAME)))

build: $(MAN)

all: build

man:
	mkdir -p $(MAN_DIR)

$(MAN): man

$(MAN_DIR)/%.1.gz: bin/%
	help2man --no-discard-stderr --version-string=${VERSION} $< | gzip -9 > $@

clean:
	$(RM) $(MAN)

veryclean: clean
	$(RM) -r -d share

test:
	$(warning not implemented yet)

install:
	for dir in $(INSTALL_DIRS); do mkdir -p $(PREFIX)/$$dir; done
	for file in $(INSTALL_FILES); do cp -u $$file $(PREFIX)/$$file; done
	mkdir -p $(DOC_DIR)
	cp -r $(DOC_FILES) $(DOC_DIR)/

uninstall:
	for file in $(INSTALL_FILES); do rm -f $(PREFIX)/$$file; done
	$(RM) -r $(DOC_DIR)

.PHONY: build man clean test install uninstall all
