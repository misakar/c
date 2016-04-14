PREFIX ?= /usr/local

install: bin/c
	mkdir -p $(PREFIX)/$(dir $<)
	cp $< $(PREFIX)/$<

uninstall:
	rm -f $(PREFIX)/bin/c

.PHONY: install uninstall
