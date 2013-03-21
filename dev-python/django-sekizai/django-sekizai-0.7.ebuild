# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils

DESCRIPTION="Django Template Blocks with extra functionality"
HOMEPAGE="https://github.com/ojii/django-sekizai"

SRC_URI="https://github.com/ojii/django-sekizai/archive/${PV}.tar.gz -> django-sekizai-${PV}.tar.gz"


LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	>=dev-python/django-classy-tags-0.3.1"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="sekizai"

src_test() {
	python setup.py test || die "tests failed"
}
