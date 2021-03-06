# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="A theme for Pinax 0.9 based on Twitter's open source Bootstrap framework."
HOMEPAGE="https://github.com/pinax/pinax-theme-bootstrap-account"

EGIT_REPO_URI="git://github.com/pinax/pinax-theme-bootstrap-account.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/django
	>=dev-python/django-appconf-0.5

	dev-python/pinax-theme-bootstrap
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="pinax_theme_bootstrap_account"
S="$WORKDIR/pinax-theme-bootstrap-account-${PV}"

src_test() {
	python setup.py test || die "tests failed"
}

