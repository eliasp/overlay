# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils git-2

DESCRIPTION="Painless translations in django, using the regular ORM. Integrates
easily into existing projects and apps. Easy convertible from
django-multilingual-ng."
HOMEPAGE="https://github.com/KristianOellegaard/django-hvad"

EGIT_REPO_URI="https://github.com/KristianOellegaard/django-hvad.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.2"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="hvad"

src_test() {
	python setup.py test || die "tests failed"
}

