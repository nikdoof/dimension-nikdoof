.POSIX:
DESTDIR=~/public_gemini

.PHONY: all
all: pull build

.PHONY: pull
pull:
	git pull origin

.PHONY: clean
clean:
	cd $(DESTDIR) && rm -rf *

.PHONY: build
build:
	${HOME}/bin/kiln build
