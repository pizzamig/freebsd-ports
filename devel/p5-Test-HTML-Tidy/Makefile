PORTNAME=	Test-HTML-Tidy
PORTVERSION=	1.00
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Test::More-style wrapper around HTML::Tidy
WWW=		https://metacpan.org/release/Test-HTML-Tidy

LICENSE=	ART10 GPLv1+
LICENSE_COMB=	dual

DEPRECATED=	Depends on expired textproc/p5-HTML-Tidy
EXPIRATION_DATE=2025-02-01

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	p5-HTML-Tidy>=0:textproc/p5-HTML-Tidy

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
