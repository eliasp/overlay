# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Django and PyMorphy2 integration"
HOMEPAGE="https://github.com/Yuego/django-pymorphy2"

EGIT_REPO_URI="https://github.com/Yuego/django-pymorphy2.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="+compat"

RDEPEND="
	dev-python/pymorphy2
	dev-python/pymorphy2-dicts
	>=dev-python/django-1.3
	compat? ( >=dev-python/russian-tagsets-0.3.1 )
"
DEPEND="dev-python/setuptools"

