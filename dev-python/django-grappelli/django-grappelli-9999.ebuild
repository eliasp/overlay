# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $
EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} pypy2_0 )

GIT_REPO_URI="https://github.com/sehmaschine/django-grappelli.git"

inherit distutils-r1 git-2

WEBAPP_MANUAL_SLOT="yes"

EGIT_REPO_URI="https://github.com/sehmaschine/django-grappelli.git"
DESCRIPTION="A jazzy skin for the Django admin interface"
HOMEPAGE="http://www.grappelliproject.com/"
LICENSE="BSD-4"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND=">=dev-python/django-1.4"
DEPEND="${RDEPEND}"

