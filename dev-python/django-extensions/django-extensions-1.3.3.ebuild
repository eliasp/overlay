# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Custom management extensions for the Django Framework."
HOMEPAGE="https://github.com/django-extensions/django-extensions"

SRC_URI="https://github.com/django-extensions/django-extensions/archive/${PV}.tar.gz -> django-extensions-${PV}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE="graphviz -pydot"

RDEPEND=">=dev-python/django-1.4
	>=dev-python/six-1.2
	graphviz? ( dev-python/pygraphviz )
	pydot? ( media-gfx/pydot )
	"
DEPEND="dev-python/setuptools"

