# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1

DESCRIPTION="A configurable set of panels that display various debug information about the current request/response."
HOMEPAGE="https://github.com/django-debug-toolbar/django-debug-toolbar"
SRC_URI="https://github.com/django-debug-toolbar/django-debug-toolbar/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ia64 ppc ppc64 x86"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="AUTHORS LICENSE README.rst"

pkg_postinst() {
	elog
	elog "Middleware class placed in:"
	elog "  'debug_toolbar.middleware.DebugToolbarMiddleware'"
	elog "Toolbar panels palced in:"
	elog "  'debug_toolbar.panels.*'"
	elog


}
