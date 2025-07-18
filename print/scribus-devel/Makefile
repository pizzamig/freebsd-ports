PORTNAME=	scribus
DISTVERSION=	1.7.0
PORTREVISION=	4
CATEGORIES=	print editors
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}${PKGNAMESUFFIX}/${PORTVERSION}/ \
		http://www.scribus.net/downloads/${PORTVERSION}/
PKGNAMESUFFIX=	-devel

PATCH_SITES=	https://github.com/scribusproject/scribus/commit/
PATCHFILES=	188d030acd0cb71e89dbb57695fe52158b6a0959.patch:-p1 \
		f553dce73905d11b301901dc039e973c18adf0a5.patch:-p1

MAINTAINER=	pkubaj@FreeBSD.org
COMMENT=	Comprehensive desktop publishing program (development version)
WWW=		https://www.scribus.net/

LICENSE=	GPLv2+
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	liblcms2.so:graphics/lcms2 \
		librevenge-0.0.so:textproc/librevenge \
		libcups.so:print/cups \
		libcdr-0.1.so:graphics/libcdr01 \
		libfreehand-0.1.so:graphics/libfreehand \
		libpagemaker-0.0.so:print/libpagemaker \
		libmspub-0.1.so:print/libmspub01 \
		libvisio-0.1.so:textproc/libvisio01 \
		libfreetype.so:print/freetype2 \
		libtiff.so:graphics/tiff \
		libpoppler.so:graphics/poppler \
		libharfbuzz-icu.so:print/harfbuzz-icu \
		libfontconfig.so:x11-fonts/fontconfig \
		libharfbuzz.so:print/harfbuzz \
		libpng.so:graphics/png \
		libicuuc.so:devel/icu \
		libqxp-0.0.so:textproc/libqxp \
		libzmf-0.0.so:graphics/libzmf

USES=		cmake compiler:c++17-lang desktop-file-utils gl gnome jpeg \
		pkgconfig python qt:6 shared-mime-info tar:xz xorg
USE_GL=		gl opengl
USE_GNOME=	cairo libxml2
USE_QT=		5compat base svg tools
USE_XORG=	xcb

CMAKE_ARGS=	-DWANT_CPP17=YES

CONFLICTS_INSTALL=	scribus

OPTIONS_DEFINE=	BOOST DOCS GRAPHICSMAGICK HUNSPELL OSG PDF
OPTIONS_DEFAULT=BOOST GRAPHICSMAGICK HUNSPELL OSG PDF

BOOST_DESC=	Enable support for Boost-based enhancement
GRAPHICSMAGICK_DESC=	Use GraphicsMagick for image import support
HUNSPELL_DESC=	Enable spellchecking via hunspell
OSG_DESC=	Enable 3D rendering via osg
PDF_DESC=	Enable PDF export via podofo

BOOST_BUILD_DEPENDS=	boost-libs>0:devel/boost-libs
BOOST_CMAKE_BOOL=	WITH_BOOST

GRAPHICSMAGICK_LIB_DEPENDS=	libGraphicsMagick.so:graphics/GraphicsMagick
GRAPHICSMAGICK_CMAKE_BOOL=	WANT_GRAPHICSMAGICK

HUNSPELL_LIB_DEPENDS=	libhunspell-1.7.so:textproc/hunspell
HUNSPELL_CMAKE_BOOL=	WANT_HUNSPELL

OSG_LIB_DEPENDS=	libosg.so:graphics/osg
OSG_CMAKE_BOOL_OFF=	WANT_NOOSG

PDF_LIB_DEPENDS=	libpodofo.so:graphics/podofo
PDF_CMAKE_BOOL=	WITH_PODOFO

post-install:
		${LN} -sf ../scribus/icons/1_5_1/scribus.png \
			${STAGEDIR}${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
