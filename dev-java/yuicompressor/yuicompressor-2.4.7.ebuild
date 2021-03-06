# Copyright 2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=4

inherit java-pkg-2 java-ant-2

DESCRIPTION="A JavaScript compressor"
HOMEPAGE="http://developer.yahoo.com/yui/compressor/"
SRC_URI="http://yui.zenfs.com/releases/${PN}/${P}.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEP=">=dev-java/jargs-1.0
	>=dev-java/rhino-1.6.7"
DEPEND=">=virtual/jdk-1.4
        ${COMMON_DEP}"
RDEPEND=">=virtual/jre-1.4
        ${COMMON_DEP}"

EANT_BUILD_TARGET="clean build.jar"

src_install() {
	java-pkg_dojar "build/${P}.jar"
	java-pkg_dolauncher
}
