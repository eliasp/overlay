# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="Django application for Loginza service"
HOMEPAGE="http://loginza.ru"
EGIT_REPO_URI="https://github.com/vgarvardt/django-loginza.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="loginza"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	dodoc README.rst
}