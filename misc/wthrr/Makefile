PORTNAME=	wthrr
DISTVERSIONPREFIX=	v
DISTVERSION=	1.2.1
PORTREVISION=	7
CATEGORIES=	misc

MAINTAINER=	pkubaj@FreeBSD.org
COMMENT=	Weather companion for the terminal
WWW=		https://crates.io/crates/wthrr

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		cargo ssl
USE_GITHUB=	yes
GH_ACCOUNT=	tobealive
GH_PROJECT=	${PORTNAME}-the-weathercrab

CARGO_CRATES=	addr2line-0.24.1 \
		adler2-2.0.0 \
		aho-corasick-1.1.3 \
		android-tzdata-0.1.1 \
		android_system_properties-0.1.5 \
		anstyle-1.0.8 \
		anyhow-1.0.89 \
		atomic-waker-1.1.2 \
		autocfg-1.4.0 \
		backtrace-0.3.74 \
		base64-0.21.7 \
		base64-0.22.1 \
		bitflags-2.6.0 \
		bumpalo-3.16.0 \
		bytes-1.7.2 \
		cc-1.1.23 \
		cfg-if-1.0.0 \
		chrono-0.4.38 \
		clap-4.5.19 \
		clap_builder-4.5.19 \
		clap_derive-4.5.18 \
		clap_lex-0.7.2 \
		console-0.15.8 \
		core-foundation-0.9.4 \
		core-foundation-sys-0.8.7 \
		dialoguer-0.11.0 \
		directories-5.0.1 \
		dirs-sys-0.4.1 \
		encode_unicode-0.3.6 \
		encoding_rs-0.8.34 \
		equivalent-1.0.1 \
		errno-0.3.9 \
		fastrand-2.1.1 \
		fnv-1.0.7 \
		foreign-types-0.3.2 \
		foreign-types-shared-0.1.1 \
		form_urlencoded-1.2.1 \
		futures-0.3.30 \
		futures-channel-0.3.30 \
		futures-core-0.3.30 \
		futures-executor-0.3.30 \
		futures-io-0.3.30 \
		futures-macro-0.3.30 \
		futures-sink-0.3.30 \
		futures-task-0.3.30 \
		futures-util-0.3.30 \
		getrandom-0.2.15 \
		gimli-0.31.0 \
		h2-0.4.6 \
		hashbrown-0.14.5 \
		heck-0.5.0 \
		hermit-abi-0.3.9 \
		http-1.1.0 \
		http-body-1.0.1 \
		http-body-util-0.1.2 \
		httparse-1.9.5 \
		hyper-1.4.1 \
		hyper-rustls-0.27.3 \
		hyper-tls-0.6.0 \
		hyper-util-0.1.9 \
		iana-time-zone-0.1.61 \
		iana-time-zone-haiku-0.1.2 \
		idna-0.5.0 \
		indexmap-2.5.0 \
		ipnet-2.10.0 \
		itoa-1.0.11 \
		js-sys-0.3.70 \
		lazy_static-1.5.0 \
		libc-0.2.159 \
		libredox-0.1.3 \
		linux-raw-sys-0.4.14 \
		log-0.4.22 \
		memchr-2.7.4 \
		mime-0.3.17 \
		miniz_oxide-0.8.0 \
		mio-1.0.2 \
		native-tls-0.2.12 \
		num-traits-0.2.19 \
		object-0.36.4 \
		once_cell-1.20.1 \
		openssl-0.10.66 \
		openssl-macros-0.1.1 \
		openssl-probe-0.1.5 \
		openssl-sys-0.9.103 \
		option-ext-0.2.0 \
		optional_struct-0.5.2 \
		optional_struct_macro-0.5.2 \
		percent-encoding-2.3.1 \
		pin-project-lite-0.2.14 \
		pin-utils-0.1.0 \
		pkg-config-0.3.31 \
		portable-atomic-1.9.0 \
		proc-macro2-1.0.86 \
		pure-rust-locales-0.8.1 \
		quote-1.0.37 \
		redox_users-0.4.6 \
		regex-1.11.0 \
		regex-automata-0.4.8 \
		regex-syntax-0.8.5 \
		reqwest-0.12.8 \
		ring-0.17.8 \
		ron-0.8.1 \
		rustc-demangle-0.1.24 \
		rustix-0.38.37 \
		rustls-0.23.13 \
		rustls-pemfile-2.2.0 \
		rustls-pki-types-1.9.0 \
		rustls-webpki-0.102.8 \
		rustversion-1.0.17 \
		ryu-1.0.18 \
		schannel-0.1.24 \
		scopeguard-1.2.0 \
		security-framework-2.11.1 \
		security-framework-sys-2.12.0 \
		serde-1.0.210 \
		serde_derive-1.0.210 \
		serde_json-1.0.128 \
		serde_urlencoded-0.7.1 \
		shell-words-1.1.0 \
		shlex-1.3.0 \
		slab-0.4.9 \
		smallvec-1.13.2 \
		socket2-0.5.7 \
		spin-0.9.8 \
		strsim-0.11.1 \
		strum-0.26.3 \
		strum_macros-0.26.4 \
		subtle-2.6.1 \
		syn-2.0.79 \
		sync_wrapper-1.0.1 \
		system-configuration-0.6.1 \
		system-configuration-sys-0.6.0 \
		tempfile-3.13.0 \
		thiserror-1.0.64 \
		thiserror-impl-1.0.64 \
		tinyvec-1.8.0 \
		tinyvec_macros-0.1.1 \
		tokio-1.40.0 \
		tokio-macros-2.4.0 \
		tokio-native-tls-0.3.1 \
		tokio-rustls-0.26.0 \
		tokio-util-0.7.12 \
		tower-service-0.3.3 \
		tracing-0.1.40 \
		tracing-core-0.1.32 \
		try-lock-0.2.5 \
		unicode-bidi-0.3.15 \
		unicode-ident-1.0.13 \
		unicode-normalization-0.1.24 \
		unicode-width-0.1.14 \
		unicode-width-0.2.0 \
		untrusted-0.9.0 \
		url-2.5.2 \
		vcpkg-0.2.15 \
		want-0.3.1 \
		wasi-0.11.0+wasi-snapshot-preview1 \
		wasm-bindgen-0.2.93 \
		wasm-bindgen-backend-0.2.93 \
		wasm-bindgen-futures-0.4.43 \
		wasm-bindgen-macro-0.2.93 \
		wasm-bindgen-macro-support-0.2.93 \
		wasm-bindgen-shared-0.2.93 \
		web-sys-0.3.70 \
		windows-core-0.52.0 \
		windows-registry-0.2.0 \
		windows-result-0.2.0 \
		windows-strings-0.1.0 \
		windows-sys-0.48.0 \
		windows-sys-0.52.0 \
		windows-sys-0.59.0 \
		windows-targets-0.48.5 \
		windows-targets-0.52.6 \
		windows_aarch64_gnullvm-0.48.5 \
		windows_aarch64_gnullvm-0.52.6 \
		windows_aarch64_msvc-0.48.5 \
		windows_aarch64_msvc-0.52.6 \
		windows_i686_gnu-0.48.5 \
		windows_i686_gnu-0.52.6 \
		windows_i686_gnullvm-0.52.6 \
		windows_i686_msvc-0.48.5 \
		windows_i686_msvc-0.52.6 \
		windows_x86_64_gnu-0.48.5 \
		windows_x86_64_gnu-0.52.6 \
		windows_x86_64_gnullvm-0.48.5 \
		windows_x86_64_gnullvm-0.52.6 \
		windows_x86_64_msvc-0.48.5 \
		windows_x86_64_msvc-0.52.6 \
		zeroize-1.8.1

MAKE_ENV=	OPENSSL_DIR=${OPENSSLDIR}

PLIST_FILES=	bin/${PORTNAME}

.include <bsd.port.mk>
