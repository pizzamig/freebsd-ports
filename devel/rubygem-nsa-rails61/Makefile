PORTNAME=	nsa
PORTVERSION=	0.3.0
CATEGORIES=	devel rubygems
MASTER_SITES=	RG
PKGNAMESUFFIX=	-rails61

MAINTAINER=	bofh@FreeBSD.org
COMMENT=	Deliver Rails ActiveSupport::Notifications to a Statsd backend
WWW=		https://github.com/localshred/nsa

LICENSE=	MIT

DEPRECATED=	Ruby on Rails 6.1.x reaches EOL on 2024-10-01
EXPIRATION_DATE=	2024-10-24

RUN_DEPENDS=	rubygem-activesupport61>=4.2<7:devel/rubygem-activesupport61 \
		rubygem-concurrent-ruby>=1.0.2<2:devel/rubygem-concurrent-ruby \
		rubygem-sidekiq>=3.5:devel/rubygem-sidekiq \
		rubygem-statsd-ruby>=1.4.0<2:devel/rubygem-statsd-ruby

USES=		gem shebangfix

NO_ARCH=	yes

SHEBANG_FILES=	bin/setup

.include <bsd.port.mk>
