# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Simple PostgreSQL HStore editor"
HOMEPAGE="https://github.com/Yuego/djorm-hstore-editor"

EGIT_REPO_URI="git://github.com/Yuego/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>dev-python/djorm-ext-hstore-0.4.3
"
DEPEND="dev-python/setuptools"


