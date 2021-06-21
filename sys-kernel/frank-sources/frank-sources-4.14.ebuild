# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
#
# Publisher Joe Andrew (joeandrewseu@gmail.com)

EAPI=6

ETYPE=sources
K_DEFCONFIG="mt7623n_evb_fwu_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"
inherit kernel-2
detect_version
detect_arch

inherit git-r3 eapi7-ver
EGIT_REPO_URI="https://github.com/frank-w/BPI-R2-4.14.git -> BPI-R2-4.14.git"
EGIT_BRANCH="${PV}-main"
EGIT_CHECKOUT_DIR="${WORKDIR}/linux-${PV}-frank"
EGIT_CLONE_TYPE="shallow"

LICENSE="GPL-2"
SLOT="0"
DESCRIPTION="Frank's latest BananaPI-R2 kernel sources for 32/64bit BananaPI SBC's"
HOMEPAGE="https://github.com/frank-w/BPI-R2-4.14"

KEYWORDS="arm ~arm"

RDEPEND="dev-embedded/u-boot-tools
	sys-devel/bc
	sys-devel/gcc
	sys-libs/glibc
	sys-libs/ncurses
	dev-util/ccache
	dev-libs/openssl
	sys-apps/fakeroot"
    
src_unpack() {
	git-r3_src_unpack
#	unpack_set_extraversion
}
