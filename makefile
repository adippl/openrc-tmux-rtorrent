ifeq ($(DESTDIR),)
    DESTDIR := /
endif

install:
	mkdir -p ${DESTDIR}/etc/init.d/
	mkdir -p ${DESTDIR}/etc/conf.d/
	cp tmux-rtorrent ${DESTDIR}/etc/init.d/tmux-rtorrent
	cp tmux-rtorrent.example ${DESTDIR}/etc/conf.d/tmux-rtorrent.example
	chmod +x ${DESTDIR}/etc/init.d/tmux-rtorrent
uninstall:
	rm -f $(DESTDIR)/etc/init.d/tmux-rtorrent /etc/init.d/tmux-rtorrent

su-install:
	su root -c 'make install'
su-uninstall:
	su root -c 'make uninstall'


