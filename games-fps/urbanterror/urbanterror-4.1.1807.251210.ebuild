# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
SLOT="4.1"

inherit subversion eutils games toolchain-funcs versionator

DESCRIPTION="Hollywood tactical shooter based on the ioquake3 engine"
HOMEPAGE="http://www.urbanterror.net/
	  http://www.www0.org/w/Optimized_executable;_builds_of_ioq3_engine_for_urt"
MY_VER=$(get_version_component_range 1)$(get_version_component_range 2)

MY_REV="$(get_version_component_range 3)"

ESVN_REPO_URI="svn://svn.icculus.org/quake3/trunk"
ESVN_REVISION="${MY_REV}"
SRC_URI="http://www0.org/urt/ioq3-$(get_version_component_range 3)-urt-$(get_version_component_range 4)-git.tar.lzma
	http://dev.gentoo.org/~hasufell/distfiles/ioq3-$(get_version_component_range 3)-urt-$(get_version_component_range 4)-git-nobumpy.tar.xz
	ftp://ftp.snt.utwente.nl/pub/games/${PN}/full_install/linux_or_mac/UrbanTerror411.zip
	http://www.iourt.com/files/UrbanTerror411.zip
	http://urbanterror.mtc-team.fr/UrbanTerror411.zip
	http://clanurt.es/descargas/UrbanTerror411.zip
	http://upload.wikimedia.org/wikipedia/en/5/56/Urbanterror.svg -> ${PN}-${SLOT}.svg"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"
IUSE="+bumpy +client +curl openal server speex vorbis"

COMMON_DEPEND="
	client? (
		media-libs/libsdl[X,opengl]
		openal? ( media-libs/openal )
		vorbis? ( media-libs/libogg media-libs/libvorbis )
	)
	curl? ( net-misc/curl )
	speex? ( media-libs/speex ) "
DEPEND="${COMMON_DEPEND}
	>media-libs/freetype-2
	app-arch/p7zip
	app-arch/unzip
	dev-util/pkgconfig
	media-libs/netpbm"
RDEPEND="${COMMON_DEPEND}"

S=${WORKDIR}/vanilla-untouched

src_unpack() {
	subversion_src_unpack
	unpack ${A}
}

src_prepare() {
	use bumpy && epatch "../ioq3-${MY_REV}-urt-$(get_version_component_range 4)-git.patch" || epatch "../ioq3-${MY_REV}-urt-$(get_version_component_range 4)-git-nobumpy.patch"
	epatch "${FILESDIR}/ftgl_include.patch"
	mv ../q3ut4/* ../UrbanTerror/q3ut4
	einfo "remove bundled include files"
	rm -rf code/{SDL12,libs/win{32,64}} || die

	# fix case sensitivity and remove shipped binaries
	local my_utdir=${WORKDIR}/UrbanTerror
	mv "${my_utdir}/q3ut4/demos/tutorial.dm_68" "${my_utdir}/q3ut4/demos/TUTORIAL.dm_68" || die
	rm -f "${my_utdir}"/io{UrbanTerror,UrTded,}.{exe,i386,x86_64} || die
}

src_compile() {
	buildit() { use $1 && echo 1 || echo 0 ; }

	emake \
		$(use amd64 && echo ARCH=x86_64 || echo ARCH=i386) \
		BUILD_SERVER=$(buildit server) \
		BUILD_CLIENT=$(buildit client) \
		BUILD_CLIENT_SMP=$(buildit client) \
		CC="$(tc-getCC)" \
		DEFAULT_BASEDIR="${GAMES_DATADIR}/${PN}-${SLOT}" \
		USE_CODEC_VORBIS=$(buildit vorbis) \
		USE_OPENAL=$(buildit openal) \
		USE_CURL=$(buildit curl) \
		USE_VOIP=$(buildit speex) \
		USE_INTERNAL_SPEEX=0 \
		USE_INTERNAL_ZLIB=1 \
		USE_LOCAL_HEADERS=0 \
		release || die
	#BASE_CFLAGS="${CFLAGS} -DUSE_ICON -DPRODUCT_VERSION=\\\"$(VERSION)\\\"" \
}

src_install() {
	local my_arch=i386
	use amd64 && my_arch=x86_64

	doicon -s scalable "${DISTDIR}"/${PN}-${SLOT}.svg

	if use client ; then
		newgamesbin build/release-linux-${my_arch}/ioquake3-smp.${my_arch} ${PN}-${SLOT} || die
		make_desktop_entry ${PN}-${SLOT} "UrbanTerror 4.1" ${PN}-${SLOT}
	fi

	if use server ; then
			newgamesbin build/release-linux-${my_arch}/ioquake3-smp.${my_arch} ${PN}-${SLOT}-dedicated || die
			make_desktop_entry ${PN}-${SLOT}-dedicated "UrbanTerror 4.1 dedicated" ${PN}-${SLOT}

			insinto "${GAMES_DATADIR}"/${PN}-${SLOT}/q3ut4
			doins dedicated.cfg || die
	fi

	dodoc ChangeLog NOTTODO README TODO {md4,voip}-readme.txt || die

	cd "${WORKDIR}"/UrbanTerror/q3ut4 || die

	insinto "${GAMES_DATADIR}"/${PN}-${SLOT}/q3ut4
	doins -r *.pk3 autoexec.cfg demos/ description.txt mapcycle.txt screenshots/ \
		glsl/ scripts/ textures/ || die

	prepgamesdirs
}
