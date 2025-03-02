PORTNAME=	docproj
PORTVERSION=	3.1
PORTREVISION=	2
CATEGORIES=	textproc
PKGNAMESUFFIX=	-legacy

MAINTAINER=	doceng@FreeBSD.org
COMMENT=	Meta-port for the FreeBSD Legacy Documentation Project
WWW=		https://www.freebsd.org/docproj

DEPRECATED=	Old version of documentation set
EXPIRATION_DATE=	2025-01-31

RUN_DEPENDS=	${LOCALBASE}/share/xml/dtd/xhtml/xhtml.soc:textproc/xhtml \
		${LOCALBASE}/share/xml/xmlcharent/catalog:textproc/xmlcharent \
		${LOCALBASE}/share/xsl/iso-schematron/xslt1/iso_schematron_skeleton_for_xslt1.xsl:textproc/iso-schematron-xslt \
		docbook-xsl-ns>=1.78.1_4:textproc/docbook-xsl-ns \
		docbook>0:textproc/docbook \
		links:www/links1 \
		p5-XML-Parser>=2.41:textproc/p5-XML-Parser \
		peps:graphics/peps \
		pngtopnm:graphics/netpbm \
		scr2png:graphics/scr2png \
		scr2txt:textproc/scr2txt \
		xsltproc:textproc/libxslt \
		zip:archivers/zip

USES=		ghostscript:run metaport perl5
USE_PERL5=	run

OPTIONS_DEFINE=		CJK DBLATEX FOP GIT GROFF IGOR JING TRANSLATOR
OPTIONS_DEFAULT=	CJK GIT GROFF IGOR TRANSLATOR

CJK_DESC=		CJK support
DBLATEX_DESC=		dblatex PDF renderer (experimental, requires TeXLive)
FOP_DESC=		FOP PDF renderer (requires Java)
GIT_DESC=		Git support
GROFF_DESC=		Groff support from ports
IGOR_DESC=		Igor automated proofreader for documentation
JING_DESC=		Jing for advanced RELAX NG validation
TRANSLATOR_DESC=	Tools for translators

CJK_RUN_DEPENDS=	html2text:textproc/html2text
DBLATEX_RUN_DEPENDS=	dblatex:textproc/dblatex
DBLATEX_USES=		tex
DBLATEX_USE=		TEX=xetex
FOP_RUN_DEPENDS=	${_FONTS} \
			fop:textproc/fop
GIT_RUN_DEPENDS=	git:devel/git
GROFF_USES=		groff:run
IGOR_RUN_DEPENDS=	igor:textproc/igor
JING_RUN_DEPENDS=	jing:textproc/jing
TRANSLATOR_RUN_DEPENDS=	itstool:textproc/itstool \
			msgcat:devel/gettext-tools

_FONTS=		${LOCALBASE}/share/fonts/dejavu/DejaVuSansMono.ttf:x11-fonts/dejavu \
		${LOCALBASE}/share/fonts/Droid/DroidSans.ttf:x11-fonts/droid-fonts-ttf \
		${LOCALBASE}/share/fonts/GentiumPlus/GentiumPlus-Regular.ttf:x11-fonts/gentium-plus \
		${LOCALBASE}/share/fonts/Lohit/Lohit-Bengali.ttf:x11-fonts/lohit
_FONTS_CJK=	${LOCALBASE}/share/fonts/ipa/ipam.otf:japanese/font-ipa \
		${LOCALBASE}/share/fonts/nanum/NanumBarunGothic.ttf:korean/nanumfonts \
		${LOCALBASE}/share/fonts/TrueType/gkai00mp.ttf:chinese/arphicttf

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MFOP} || ${PORT_OPTIONS:MDBLATEX}
ONLY_FOR_ARCHS=	amd64 i386
CJK_RUN_DEPENDS+=	${_FONTS_CJK}
.endif

# generate MINIMALDOCPORTS for src/release/Makefile.inc.docports.
# (XXX: incomplete yet)
minimaldocports:
	@${ECHO_CMD} "MINIMALDOCPORTS= \\"
	@${MAKE} all-depends-list | ${SED} -e 's,^${PORTSDIR}/,	,' -e 's,$$, \\,'

.include <bsd.port.mk>
