# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/html5lib/html5lib-0.95.ebuild,v 1.3 2012/08/02 21:59:05 neurogeek Exp $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 mercurial

DESCRIPTION="A advanced news plugin for django-cms based on cmsplugin-news"
HOMEPAGE="https://bitbucket.org/bercab/cmsplugin-advancednews/overview"
EHG_REPO_URI="https://bitbucket.org/bercab/cmsplugin-advancednews"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-fbsd"
IUSE=""

S="${WORKDIR}/cmsplugin-advancednews"

DEPEND="dev-python/setuptools
	dev-python/django-cms
	dev-python/django-hvad
"
RDEPEND=""

