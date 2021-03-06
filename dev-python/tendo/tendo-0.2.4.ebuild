# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_2,3_3} pypy2_0 )

inherit eutils distutils-r1

DESCRIPTION="Tendo is a python module that adds basic functionality that is not (yet) provided by Python."
HOMEPAGE="https://github.com/pycontribs/tendo"

SRC_URI="https://github.com/pycontribs/tendo/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="PYTHON"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/six
"

DEPEND="
	dev-python/setuptools
"

