# Copyright 2011-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="openrc-script launching rtorrent in tmux, firejail and VPN network namespace"
HOMEPAGE="https://github.com/adippl/openrc-tmux-rtorrent"
SRC_URI=""

inherit git-r3
EGIT_REPO_URI="https://github.com/adippl/openrc-tmux-rtorrent"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+wg"

DEPEND="
	app-misc/tmux
	net-p2p/rtorrent
	net-misc/curl[adns]
	sys-apps/firejail
	wg? (
		sys-apps/iproute2
		net-vpn/wireguard-tools
		)

	"
RDEPEND="${DEPEND}"
BDEPEND=""
