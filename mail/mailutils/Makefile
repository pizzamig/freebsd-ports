PORTNAME=	mailutils
PORTVERSION=	3.19
CATEGORIES=	mail
MASTER_SITES=	GNU GNU_ALPHA

MAINTAINER=	zeus@gnu.org.ua
COMMENT=	Utilities, daemons, and filters for processing e-mail
WWW=		https://mailutils.org/

LICENSE=	GPLv3+

LIB_DEPENDS=	libgc-threaded.so:devel/boehm-gc-threaded \
		libltdl.so:devel/libltdl \
		libunistring.so:devel/libunistring
TEST_DEPENDS=	automake:devel/automake \
		runtest:misc/dejagnu

USES=		cpe gmake iconv libtool localbase readline tar:xz
CPE_VENDOR=	gnu
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
USE_RC_SUBR=	comsatd imap4d pop3d
INSTALL_TARGET=	install-strip
TEST_TARGET=	check

CONFLICTS_INSTALL=	avenger elm # bin/dotlock bin/frm

PLIST_SUB+=	LIBVERSION=9.0.0 LIBSUFX=9 VERSION=${PORTVERSION}

INFO=		${PORTNAME}
PORTDOCS=	AUTHORS ChangeLog NEWS README* THANKS TODO

OPTIONS_DEFINE=		DOCS FRIBIDI GNUTLS GSSAPI GUILE MH NLS PAM PYTHON
OPTIONS_DEFAULT=	GDBM GNUTLS PAM
OPTIONS_MULTI=		DB
OPTIONS_MULTI_DB=	BDB GDBM KYOTOCABINET LDAP MYSQL PGSQL TOKYOCABINET
OPTIONS_SUB=		yes

DB_DESC=		Database configuration
KYOTOCABINET_DESC=	Kyoto Cabinet database support
MH_DESC=		MH (Message Handling) system support
TOKYOCABINET_DESC=	Tokyo Cabinet database support

FRIBIDI_LIB_DEPENDS=	libfribidi.so:converters/fribidi
FRIBIDI_CONFIGURE_WITH=	fribidi

GNUTLS_LIB_DEPENDS=	libgnutls.so:security/gnutls
GNUTLS_CONFIGURE_WITH=	gnutls

GSSAPI_RUN_DEPENDS=	cyrus-sasl-gssapi>0:security/cyrus-sasl2-gssapi
GSSAPI_USES=		ssl
GSSAPI_CONFIGURE_WITH=	gssapi

GUILE_USES=		guile:2.2,alias makeinfo pkgconfig
GUILE_CONFIGURE_WITH=	guile

MH_CONFIGURE_ENV=	ac_cv_prog_EMACS=no
MH_CONFIGURE_ENABLE=	mh
MH_USES=		emacs:noflavors
MH_VARS=		EMACS_NO_DEPENDS=yes

NLS_USES=		gettext
NLS_CONFIGURE_ENABLE=	nls

PAM_CONFIGURE_ENABLE=	pam

PYTHON_USES=		python
PYTHON_CONFIGURE_ENABLE=python
PYTHON_CONFIGURE_ENV=	PYTHON_CONFIG=${PYTHON_CMD}-config

BDB_USES=		bdb
BDB_CONFIGURE_WITH=	berkeley-db
BDB_CPPFLAGS=		-I${BDB_INCLUDE_DIR}
BDB_LDFLAGS=		-L${BDB_LIB_DIR}

GDBM_LIB_DEPENDS=	libgdbm.so:databases/gdbm
GDBM_CONFIGURE_WITH=	gdbm

KYOTOCABINET_LIB_DEPENDS=	libkyotocabinet.so:databases/kyotocabinet
KYOTOCABINET_CONFIGURE_WITH=	kyotocabinet

LDAP_USES=		ldap
LDAP_CONFIGURE_WITH=	ldap

MYSQL_USES=		mysql
MYSQL_CONFIGURE_WITH=	mysql

PGSQL_USES=		pgsql
PGSQL_CONFIGURE_WITH=	postgres

TOKYOCABINET_LIB_DEPENDS=	libtokyocabinet.so:databases/tokyocabinet
TOKYOCABINET_CONFIGURE_WITH=	tokyocabinet

.if defined(WITH_DEBUG)
CONFIGURE_ARGS+=	--enable-debug
.endif

post-patch:
	@${REINPLACE_CMD} -e '/MU_AUTHLIBS=/s,-lldap,-llber &,' \
		${WRKSRC}/configure
	@${REINPLACE_CMD} -e '/chown/,+1s|ch|#&|' \
		${WRKSRC}/dotlock/Makefile.in ${WRKSRC}/mda/mda/Makefile.in
	@${REINPLACE_CMD} -e 's,-E,& -P,' ${WRKSRC}/libmu_scm/Makefile.in

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${STAGEDIR}${DOCSDIR}

post-install-MH-on:
	@${MKDIR} ${STAGEDIR}${EMACS_SITE_LISPDIR}
	${RLN} ${STAGEDIR}${DATADIR}/mh/mailutils-mh.el \
		${STAGEDIR}${PREFIX}/${EMACS_SITE_LISPDIR}

.include <bsd.port.mk>
