PORTNAME=	infobus
PORTVERSION=	1.2
PORTREVISION=	2
CATEGORIES=	java devel
DISTNAME=	ib12

MAINTAINER=	java@FreeBSD.org
COMMENT=	Enables dynamic exchange of data between JavaBeans(TM)
WWW=		http://java.sun.com/beans/infobus/index.html

# Converted from NO_CDROM
LICENSE=	infobus
LICENSE_NAME=	infobus
LICENSE_TEXT=	See the license
LICENSE_PERMS=	dist-mirror pkg-mirror auto-accept

DEPRECATED=	Outdated API and is no longer actively developed or maintained
EXPIRATION_DATE=2025-01-25

USES=		java zip

NO_BUILD=	yes

NO_WRKSUBDIR=	yes

PORTDOCS=	*
PORTEXAMPLES=	*

OPTIONS_DEFINE=		DOCS EXAMPLES

.include <bsd.port.pre.mk>
.if !exists(${DISTDIR}/${DISTNAME}${EXTRACT_SUFX})
IGNORE=	You must manually fetch the distribution from http://java.sun.com/products/archive/javabeans/infobus/downloads.html and place it in ${DISTDIR} then run make again
.endif

do-install:
	${INSTALL_DATA} ${WRKSRC}/infobus.jar ${STAGEDIR}${JAVAJARDIR}/
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/*.java ${STAGEDIR}${EXAMPLESDIR}
.for i in examples.mak makefile moneyman.mf ReadMe.html ReadRowset.html coffee6.gif
	${INSTALL_DATA} ${WRKSRC}/${i} ${STAGEDIR}${EXAMPLESDIR}
.endfor
	${MKDIR} ${STAGEDIR}${DOCSDIR}
.for i in LICENSE.HTML ReadMe.html coffee6.gif
	${INSTALL_DATA} ${WRKSRC}/${i} ${STAGEDIR}${DOCSDIR}
.endfor
	cd ${WRKSRC}/doc && \
		${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR}

.include <bsd.port.post.mk>
