# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Support for many storages (S3, MogileFS, etc) in Django."
HOMEPAGE="https://github.com/iserko/django-storages"

EGIT_REPO_URI="git://github.com/iserko/django-storages.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.3
	dev-python/boto
"

DEPEND="dev-python/setuptools"

