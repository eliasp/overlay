# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="App to figure out where your visitors are from by their IP address."
HOMEPAGE="http://django-geoip.readthedocs.org/en/latest/index.html"

EGIT_REPO_URI="https://github.com/futurecolors/django-geoip.git"
EGIT_COMMIT="e585bcacf1d89fe044d3916b4849d89586641241"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	dev-python/django-appconf
	dev-python/progressbar"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="django_geoip"

src_test() {
	python setup.py test || die "tests failed"
}
