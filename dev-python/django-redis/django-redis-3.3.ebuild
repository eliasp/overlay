# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="It is a fork of django-redis-cache. And the reasons are: The author seems to have abandoned the project and has significant bugs that have not been fixed."
HOMEPAGE="https://github.com/niwibe/django-redis"

SRC_URI="https://github.com/niwibe/django-redis/archive/${PV}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 ~ia64 ~ppc ~ppc64 x86"
IUSE="test"

RDEPEND=">=dev-python/django-1.3
	dev-db/redis
	>=dev-python/redis-py-2.7.0"
DEPEND="dev-python/setuptools"

