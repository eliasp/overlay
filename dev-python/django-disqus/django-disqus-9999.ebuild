# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Integrates DISQUS into Django"
HOMEPAGE="http://django-disqus.readthedocs.org/"

EGIT_REPO_URI="git://github.com/Yuego/django-disqus.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.3
"
DEPEND="dev-python/setuptools"

