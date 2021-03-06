# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Python port of Google's libphonenumber"
HOMEPAGE="https://github.com/daviddrysdale/python-phonenumbers"

VER="${PV/_beta/b}"
EGIT_REPO_URI="git://github.com/daviddrysdale/python-phonenumbers.git"
EGIT_MASTER="release-${VER}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools"

src_compile() {
	cd $S/python
	distutils-r1_src_compile
}
