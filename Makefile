.POSIX:
DESTDIR=~/public_gemini

.PHONY: all
all: pull build deploy notify-antenna

.PHONY: pull
pull:
	git pull origin

.PHONY: clean
clean:
	cd $(DESTDIR) && rm -rf *

.PHONY: build
build:
	${HOME}/bin/kiln build

.PHONY: deploy
deploy:
	mkdir -p $(DESTDIR)/
	cp -R public/* $(DESTDIR)/

.PHONY: notify-antenna
notify-antenna:
	tools/antenna-ping dimension.sh/~nikdoof/logs/atom.xml