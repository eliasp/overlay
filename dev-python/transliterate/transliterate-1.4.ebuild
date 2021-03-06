# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3} pypy2_0 )

inherit eutils distutils-r1

DESCRIPTION="Bi-directional transliterator for Python. Transliterates (unicode) strings according to the rules specified in the language packs."
HOMEPAGE="https://github.com/barseghyanartur/transliterate"

SRC_URI="https://github.com/barseghyanartur/transliterate/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/six
"
DEPEND="dev-python/setuptools"

