# Kernel build tools
sudo apt install -y asciidoc asciidoc-base asciidoc-common autoconf automake autopoint autotools-dev base-files base-passwd bash bc bindgen-0.65 binutils binutils-aarch64-linux-gnu binutils-common bison bsdextrautils bsdutils build-essential bzip2 ca-certificates ca-certificates-java clang-15 clang-17 clang-18 clang-19 coreutils cpio cpp cpp-12 cpp-13 cpp-13-aarch64-linux-gnu cpp-14 cpp-14-aarch64-linux-gnu cpp-aarch64-linux-gnu curl dash debconf debhelper debianutils debugedit default-jdk-headless default-jre-headless dh-autoreconf dh-strip-nondeterminism diffutils dkms docbook-xml docbook-xsl docutils-common dpkg dpkg-dev dwarfdump dwz file findutils flex g++ g++-14 g++-14-aarch64-linux-gnu g++-aarch64-linux-gnu gawk gcc gcc-12 gcc-12-base gcc-13 gcc-13-aarch64-linux-gnu gcc-13-base gcc-14 gcc-14-aarch64-linux-gnu gcc-14-base gcc-aarch64-linux-gnu gettext gettext-base grep groff-base gzip hostname init-system-helpers install-info intltool-debian java-common kmod libacl1 libarchive-zip-perl libasan8 libatomic1 libattr1 libaudit-common libaudit-dev libaudit1 libbinutils libblkid1 libbpf1 libbrotli1 libbsd0 libbz2-1.0 libc-bin libc-dev-bin libc6 libc6-dev libcap-dev libcap-ng-dev libcap-ng0 libcap2 libcc1-0 libclang-common-15-dev libclang-common-17-dev libclang-common-18-dev libclang-common-19-dev libclang-cpp15t64 libclang-cpp17t64 libclang-cpp18 libclang-cpp19 libclang1-15t64 libclang1-17t64 libclang1-18 libclang1-19 libcom-err2 libcrypt-dev libcrypt1 libctf-nobfd0 libctf0 libcurl4t64 libdb5.3t64 libdebconfclient0 libdebhelper-perl libdpkg-perl libdw-dev libdw1t64 libdwarf1 libedit2 libelf-dev libelf1t64 libexpat1 libexpat1-dev libffi8 libfile-stripnondeterminism-perl libgc1 libgcc-12-dev libgcc-13-dev libgcc-14-dev libgcc-s1 libgcrypt20 libgdbm-compat4t64 libgdbm6t64 libgmp10 libgnutls30t64 libgomp1 libgpg-error0 libgprofng0 libgssapi-krb5-2 libhogweed6t64 libhwasan0 libiberty-dev libicu74 libidn2-0 libisl23 libitm1 libjansson4 libjpeg-turbo8 libjpeg8 libjs-jquery libjs-sphinxdoc libjs-underscore libk5crypto3 libkeyutils1 libkmod2 libkrb5-3 libkrb5support0 liblcms2-2 libldap-common libldap2 libllvm15t64 libllvm17t64 libllvm18 libllvm19 liblsan0 liblz4-1 liblzma-dev liblzma5 libmagic-mgc libmagic1t64 libmd0 libmount1 libmpc3 libmpfr6 libncursesw6 libnettle8t64 libnewt-dev libnewt0.52 libnghttp2-14 libnsl2 libnspr4 libnss3 libnuma-dev libnuma1 libobjc-13-dev libobjc-14-dev libobjc4 libp11-kit0 libpam-modules libpam-modules-bin libpam-runtime libpam0g libpci-dev libpci3 libpcre2-8-0 libpcsclite1 libperl5.38t64 libpipeline1 libpkgconf3 libpng-dev libpng16-16t64 libpopt0 libpsl5t64 libpython3-dev libpython3-stdlib libpython3.12-dev libpython3.12-minimal libpython3.12-stdlib libpython3.12t64 libreadline8t64 librtmp1 libsasl2-2 libsasl2-modules-db libseccomp2 libselinux1 libsframe1 libsigsegv2 libslang2 libslang2-dev libsmartcols1 libsqlite3-0 libssh2-1t64 libssl-dev libssl3t64 libstd-rust-1.80 libstd-rust-1.80-dev libstdc++-12-dev libstdc++-13-dev libstdc++-14-dev libstdc++6 libsystemd0 libtasn1-6 libtinfo6 libtirpc-common libtirpc3t64 libtool libtraceevent-dev libtraceevent1 libtracefs-dev libtracefs1 libtsan2 libubsan1 libuchardet0 libudev-dev libudev1 libunistring5 libunwind-dev libunwind8 libuuid1 libxml2 libxml2-utils libxslt1.1 libxxhash0 libzstd-dev libzstd1 linux-libc-dev llvm-15-linker-tools llvm-17-linker-tools llvm-18-linker-tools llvm-19-linker-tools lsb-release lto-disabled-list m4 make man-db mawk media-types ncurses-base ncurses-bin netbase openjdk-21-jdk-headless openjdk-21-jre-headless openssl pahole patch pci.ids perl perl-base perl-modules-5.38 pkg-config pkgconf pkgconf-bin po-debconf python3 python3-autocommand python3-dev python3-docutils python3-importlib-metadata python3-inflect python3-jaraco.context python3-jaraco.functools python3-minimal python3-more-itertools python3-pkg-resources python3-roman python3-setuptools python3-typeguard python3-typing-extensions python3-zipp python3.12 python3.12-dev python3.12-minimal readline-common rpcsvc-proto rsync rust-1.80-src rust-src rustc rustc-1.80 rustfmt rustfmt-1.80 sed sensible-utils sgml-base sgml-data sharutils sysvinit-utils tar tzdata util-linux uuid-dev xml-core xmlto xsltproc xz-utils zlib1g zlib1g-dev zstd

# Aarch64 cross compile specific
sudo apt install -y gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu

# Pull it
git clone https://github.com/jhovold/linux/tree/wip/x1e80100-6.14-rc4 kernel
cd kernel

# Build kernel
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- oldconfig

# 
# make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- 
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- bindeb-pkg
