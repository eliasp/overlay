# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit base flag-o-matic

DESCRIPTION="pfstmo package contains the implementation of state-of-the-art tone
mapping operators"
HOMEPAGE="http://pfstools.sourceforge.net/pfstmo.html"
SRC_URI="mirror://sourceforge/pfstools/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="
	>=media-gfx/pfstools-1.0
	>=sci-libs/fftw-3.0
	sci-libs/gsl"
RDEPEND="${DEPEND}"

src_configure() {
	append-ldflags "-fopenmp"

	econf \
		$(use_enable debug)
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc AUTHORS ChangeLog README || die
}
