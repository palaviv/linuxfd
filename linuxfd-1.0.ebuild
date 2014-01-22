# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{3_2,3_3} )

inherit distutils-r1 linux-info

DESCRIPTION="Python bindings for the Linux eventfd/signalfd/timerfd syscalls"
HOMEPAGE="http://abelbeck.wordpress.com/ https://www.github.com/abelbeck/linuxfd"
SRC_URI="https://github.com/FrankAbelbeck/${PN}/archive/${PV}.tar.gz

LICENSE="LGPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

DOCS=( COPYING README )

CONFIG_CHECK="EVENTFD SIGNALFD TIMERFD"
ERROR_EVENTFD="${PN} requires support for timerfd() system calls (CONFIG_EVENTFD), being enabled in 'General setup -> Configure standard kernel features (expert users)'."
ERROR_SIGNALFD="${PN} requires support for signalfd() system calls (CONFIG_SIGNALFD), being enabled in 'General setup -> Configure standard kernel features (expert users)'."
ERROR_TIMERFD="${PN} requires support for eventfd() system calls (CONFIG_TIMERFD), being enabled in 'General setup -> Configure standard kernel features (expert users)'."

pkg_setup() {
	linux-info_pkg_setup
}