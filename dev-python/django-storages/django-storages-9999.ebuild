# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="Support for many storages (S3, MogileFS, etc) in Django."
HOMEPAGE="https://github.com/ennio/django-hosts"

EGIT_REPO_URI="https://github.com/iserko/django-storages.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	dev-python/boto
"

DEPEND="dev-python/setuptools"

PYTHON_MODNAME="storages"

src_test() {
	python setup.py test || die "tests failed"
}
