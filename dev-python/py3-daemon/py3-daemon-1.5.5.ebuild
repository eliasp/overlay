# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{3_2,3_3} )

inherit distutils-r1

DESCRIPTION="Library to implement a well-behaved Unix daemon process."
HOMEPAGE="https://github.com/Yuego/python-daemon"

SRC_URI="https://github.com/Yuego/python-daemon/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="-test"

RDEPEND="
	>=dev-python/lockfile-0.9.1
	test? (
		>=dev-python/minimock-1.2.2
	)
"
DEPEND="dev-python/setuptools"

S="${WORKDIR}/python-daemon-${PV}"
