ifeq ($(DESTDIR),)
    DESTDIR := 
endif

dunmy_compile:
	echo "use make install to install scripts"

install:
	install -d ${DESTDIR}/etc/init.d/
	install -m 755 tmux-rtorrent ${DESTDIR}/etc/init.d/
uninstall:
	rm -f $(DESTDIR)/etc/init.d/tmux-rtorrent $(DESTDIR)/etc/init.d/tmux-rtorrent

su-install:
	su root -c 'make install'
su-uninstall:
	su root -c 'make uninstall'


