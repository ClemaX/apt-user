DESTDIR:=
PREFIX:="$(HOME)/.local/usr/bin"

SRCDIR:=.

SRCS:=$(addprefix $(SRCDIR)/, apt-user apt-rdepends)

install: $(SRCS)
	install -vD -t "$(DESTDIR)$(PREFIX)" $^

.PHONY: install
