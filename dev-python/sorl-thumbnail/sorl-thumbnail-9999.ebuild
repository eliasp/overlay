# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3} pypy2_0 )

inherit distutils-r1 git-2

EGIT_REPO_URI="https://github.com/sorl/sorl-thumbnail.git"
DESCRIPTION=""
HOMEPAGE="http://thumbnail.sorl.net/index.html"
LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="-memcached +redis +imagemagick"

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools
	memcached? ( dev-python/python-memcached )
	redis? ( dev-python/redis-py
			 dev-db/redis )
	imagemagick? ( media-gfx/imagemagick )"

src_install () {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc LICENSE README.rst
}
