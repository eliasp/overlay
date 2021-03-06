# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

EGIT_REPO_URI="https://github.com/miracle2k/django-assets.git"

inherit distutils-r1 git-2

DESCRIPTION="Django webassets integration."
HOMEPAGE="https://github.com/miracle2k/django-assets"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

DOCS="docs/* README.rst"

src_install() {
#	distutils_python_version
#
#	site_pkgs="$(python_get_sitedir)"
#	export PYTHONPATH="${PYTHONPATH}:${D}/${site_pkgs}"
#	dodir ${site_pkgs}
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
}
