PORTNAME=	video-trimmer
DISTVERSIONPREFIX=	v
DISTVERSION=	0.8.2
PORTREVISION=	12
CATEGORIES=	multimedia

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Trim videos quickly
WWW=		https://gitlab.gnome.org/YaLTeR/video-trimmer

LICENSE=	GPLv3+
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	blueprint-compiler:devel/blueprint-compiler
RUN_DEPENDS=	ffmpeg:multimedia/ffmpeg

USES=		cargo desktop-file-utils gettext gnome gstreamer meson pkgconfig
USE_GITLAB=	yes
USE_GNOME=	gtk40 libadwaita
USE_GSTREAMER=	good libav
GL_SITE=	https://gitlab.gnome.org
GL_ACCOUNT=	YaLTeR
MAKE_ENV=	${CARGO_ENV}
CARGO_BUILD=	no
CARGO_INSTALL=	no
CARGO_TEST=	no
GLIB_SCHEMAS=	org.gnome.gitlab.YaLTeR.VideoTrimmer.gschema.xml

post-patch:
# Make each cargo subcommand very verbose
	@${REINPLACE_CMD} -e '/cargo/s/ --/&verbose&verbose&/' \
		${WRKSRC}/build-aux/cargo.sh

.include <bsd.port.mk>
