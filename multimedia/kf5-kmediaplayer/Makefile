PORTNAME=	kmediaplayer
DISTVERSION=	${KDE_FRAMEWORKS_VERSION}
CATEGORIES=	multimedia kde kde-frameworks

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KF5 plugin interface for media player features

USES=		cmake compiler:c++11-lib gettext kde:5 qt:5 tar:xz
USE_KDE=	auth codecs completion config configwidgets coreaddons \
		i18n jobwidgets kio parts service sonnet textwidgets \
		widgetsaddons windowsystem xmlgui \
		ecm_build
USE_QT=		concurrent core dbus gui network widgets xml \
		buildtools_build qmake_build testlib_build 

.include <bsd.port.mk>
