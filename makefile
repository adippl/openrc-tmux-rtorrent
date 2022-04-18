ifeq ($(DESTDIR),)
 DESTDIR := 
 PREFIX := /usr/local
else
 ifeq ($(PREFIX),)
  PREFIX := /usr
 endif
endif

dunmy_compile:
	echo "use make install to install scripts"

install:
	install -D -m 755 tmux-rtorrent ${DESTDIR}/etc/init.d/tmux-rtorrent
uninstall:
	rm -f $(DESTDIR)/etc/init.d/tmux-rtorrent

su-install:
	su root -c 'make install'
su-uninstall:
	su root -c 'make uninstall'


