# Created by: Ka Ho Ng <khng300@gmail.com>

PORTNAME=	rime-array
DISTVERSION=	g20200902
CATEGORIES=	chinese textproc

MAINTAINER=	khng300@gmail.com
COMMENT=	Rime Array input schema support

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	rime_deployer:chinese/librime \
		zh-rime-essay>g0:chinese/rime-essay \
		zh-rime-prelude>g0:chinese/rime-prelude
RUN_DEPENDS=	zh-rime-prelude>g0:chinese/rime-prelude

USES=		localbase

OPTIONS_DEFINE=	DOCS
OPTIONS_SUB=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	rime
GH_TAGNAME=	cc6f15985090b7c1d57b963874d97e1338474e70

NO_ARCH=	yes

PORTDOCS=	README.md

PRELUDE_FILES=	default.yaml key_bindings.yaml punctuation.yaml symbols.yaml
ESSAY_FILES=	essay.txt
SCHEMA_FILES=	array30.schema.yaml
MY_OUTDIR=	${WRKDIR}/out

do-build:
	@${MKDIR} ${MY_OUTDIR}
	@${RLN} ${WRKSRC}/* ${MY_OUTDIR}
.for i in ${PRELUDE_FILES} ${ESSAY_FILES}
	@${CP} ${LOCALBASE}/share/rime-data/${i} ${MY_OUTDIR}
.endfor
.for i in ${SCHEMA_FILES}
	rime_deployer --compile ${WRKSRC}/${i} ${MY_OUTDIR}
.endfor

do-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/rime-data
	${INSTALL_DATA} ${WRKSRC}/*.yaml ${STAGEDIR}${PREFIX}/share/rime-data
	(cd ${MY_OUTDIR} && ${COPYTREE_SHARE} build ${STAGEDIR}${PREFIX}/share/rime-data)

do-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_MAN} ${WRKSRC}/README.md ${STAGEDIR}/${DOCSDIR}

.include <bsd.port.mk>
