# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Generic Ratings in Django"
HOMEPAGE="http://github.com/dcramer/django-ratings"

EGIT_REPO_URI="git://github.com/Yuego/django-ratings.git"
EGIT_BRANCH="develop"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.3
"
DEPEND="dev-python/setuptools"

