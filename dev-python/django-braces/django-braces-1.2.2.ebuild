# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Reusable, generic mixins for Django"
HOMEPAGE="https://github.com/brack3t/django-braces"

SRC_URI="https://github.com/brack3t/django-braces/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

