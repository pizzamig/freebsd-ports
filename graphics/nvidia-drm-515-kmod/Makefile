PORTNAME=	nvidia-drm-515-kmod
CATEGORIES=	graphics

BUILD_DEPENDS+=	${KMODDIR}/drm.ko:graphics/drm-515-kmod
RUN_DEPENDS+=	${KMODDIR}/drm.ko:graphics/drm-515-kmod
CONFLICTS_INSTALL=	nvidia-drm-510-kmod nvidia-drm-61-kmod

.include "${.CURDIR}/../drm-515-kmod/Makefile.version"
.include "${.CURDIR}/../nvidia-drm-kmod/Makefile.common"

.include <bsd.port.mk>
