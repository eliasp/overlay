# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"

PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

KEYWORDS="~amd64 ~x86"

MY_PN=Routes
MY_P=${MY_PN}-${PV}

DESCRIPTION="A Python re-implementation of the Rails routes system for mapping URL's to Controllers/Actions."
HOMEPAGE="http://routes.groovie.org"
SRC_URI="http://cheeseshop.python.org/packages/source/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"
LICENSE="BSD"
SLOT="0"
IUSE="doc"

DEPEND="doc? ( dev-python/buildutils dev-python/pudge )
	dev-python/setuptools"
RDEPEND=""

S="${WORKDIR}/${MY_P}"

src_compile() {
	distutils_src_compile
	if use doc ; then
		PYTHONPATH=. "${python}" setup.py pudge || die "generating docs failed"
	fi
}

src_install() {
	distutils_src_install
	use doc && dohtml -r docs/html/*
}