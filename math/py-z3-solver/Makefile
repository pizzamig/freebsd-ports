PORTNAME=	z3-solver
DISTVERSIONPREFIX=	z3-
DISTVERSION=	4.8.17
PORTREVISION=	1
CATEGORIES=	math
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	yuri@FreeBSD.org
COMMENT=	Python binding for Z3 Theorem Prover
WWW=		https://github.com/Z3Prover/z3

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/../../../LICENSE.txt

BROKEN=		Could not find libz3.so
BROKEN_armv7=	fails to compile on 13.1 and 14: clang crashes, see https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=268009
BROKEN_riscv64=	fails to configure, see https://github.com/Z3Prover/z3/issues/6183

USES=		cmake:indirect compiler:c++11-lang python
USE_PYTHON=	distutils autoplist

NO_ARCH=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	Z3Prover
GH_PROJECT=	z3

CFLAGS_armv7=	-fPIC

WRKSRC_SUBDIR=	src/api/python

# CAVEAT: There should have LIB_DEPENDS=libz3.so:math/z3, but currently it rebuilds all code, see https://github.com/Z3Prover/z3/issues/1767

post-patch: # https://github.com/Z3Prover/z3/issues/2131
	@${REINPLACE_CMD} 's|…|...|' ${WRKSRC}/../../ast/recfun_decl_plugin.h

.include <bsd.port.mk>
