#! /usr/bin/env perl

package configdata;

use strict;
use warnings;

use Exporter;
#use vars qw(@ISA @EXPORT);
our @ISA = qw(Exporter);
our @EXPORT = qw(%config %target %disabled %withargs %unified_info @disablables);

our %config = (
  AR => "ar",
  ARFLAGS => [ "r" ],
  CC => "cc",
  CFLAGS => [ "-O3" ],
  CPPDEFINES => [  ],
  CPPFLAGS => [  ],
  CPPINCLUDES => [  ],
  CXXFLAGS => [  ],
  HASHBANGPERL => "/usr/bin/env perl",
  LDFLAGS => [  ],
  LDLIBS => [  ],
  PERL => "/opt/homebrew/Cellar/perl/5.38.2_1/bin/perl",
  RANLIB => "ranlib -c",
  RC => "windres",
  RCFLAGS => [  ],
  b32 => "0",
  b64 => "0",
  b64l => "1",
  bn_ll => "0",
  build_file => "Makefile",
  build_file_templates => [ "../../../../../../../ThirdParty/openssl-1.1.1c/Configurations/common0.tmpl", "../../../../../../../ThirdParty/openssl-1.1.1c/Configurations/unix-Makefile.tmpl", "../../../../../../../ThirdParty/openssl-1.1.1c/Configurations/common.tmpl" ],
  build_infos => [ "../../../../../../../ThirdParty/openssl-1.1.1c/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/apps/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/test/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/util/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/tools/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/objects/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/md4/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/md5/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/mdc2/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/hmac/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ripemd/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/whrlpool/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/blake2/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/siphash/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sm3/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc2/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc4/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/idea/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aria/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bf/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cast/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/camellia/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/seed/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sm4/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/chacha/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sm2/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dso/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/buffer/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/stack/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/lhash/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rand/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/err/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/conf/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/txt_db/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs7/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/comp/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ocsp/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ui/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/srp/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cmac/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ct/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/async/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/kdf/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/store/build.info", "../../../../../../../ThirdParty/openssl-1.1.1c/test/ossl_shim/build.info" ],
  build_type => "release",
  builddir => ".",
  cflags => [  ],
  conf_files => [ "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/openssl-1.1.1c/Configurations/00-base-templates.conf", "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/openssl-1.1.1c/Configurations/10-main.conf", "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/openssl-1.1.1c/Configurations/15-ios.conf" ],
  cppflags => [  ],
  cxxflags => [  ],
  defines => [ "NDEBUG" ],
  dirs => [ "crypto", "ssl", "apps", "test", "util", "tools", "fuzz" ],
  dynamic_engines => "1",
  engdirs => [  ],
  ex_libs => [  ],
  export_var_as_fn => "0",
  includes => [  ],
  lflags => [  ],
  lib_defines => [ "OPENSSL_PIC" ],
  libdir => "",
  major => "1",
  makedepprog => "\$(CROSS_COMPILE)cc",
  minor => "1.1",
  openssl_algorithm_defines => [ "OPENSSL_NO_MD2", "OPENSSL_NO_RC5" ],
  openssl_api_defines => [  ],
  openssl_other_defines => [ "OPENSSL_RAND_SEED_OS", "OPENSSL_NO_AFALGENG", "OPENSSL_NO_ASAN", "OPENSSL_NO_ASM", "OPENSSL_NO_ASYNC", "OPENSSL_NO_CRYPTO_MDEBUG", "OPENSSL_NO_CRYPTO_MDEBUG_BACKTRACE", "OPENSSL_NO_DEVCRYPTOENG", "OPENSSL_NO_EC_NISTP_64_GCC_128", "OPENSSL_NO_EGD", "OPENSSL_NO_ENGINE", "OPENSSL_NO_EXTERNAL_TESTS", "OPENSSL_NO_FUZZ_AFL", "OPENSSL_NO_FUZZ_LIBFUZZER", "OPENSSL_NO_HEARTBEATS", "OPENSSL_NO_MSAN", "OPENSSL_NO_SCTP", "OPENSSL_NO_SSL_TRACE", "OPENSSL_NO_SSL3", "OPENSSL_NO_SSL3_METHOD", "OPENSSL_NO_UBSAN", "OPENSSL_NO_UNIT_TEST", "OPENSSL_NO_WEAK_SSL_CIPHERS", "OPENSSL_NO_STATIC_ENGINE", "OPENSSL_NO_AFALGENG" ],
  openssl_sys_defines => [ "OPENSSL_SYS_iOS" ],
  openssl_thread_defines => [ "OPENSSL_THREADS" ],
  openssldir => "",
  options => "--prefix=/Users/varun/Documents/Projects/CPP/Demo/build-ios/staging no-afalgeng no-asan no-asm no-async no-buildtest-c++ no-crypto-mdebug no-crypto-mdebug-backtrace no-devcryptoeng no-ec_nistp_64_gcc_128 no-egd no-engine no-external-tests no-fuzz-afl no-fuzz-libfuzzer no-heartbeats no-md2 no-msan no-rc5 no-sctp no-ssl-trace no-ssl3 no-ssl3-method no-ubsan no-unit-test no-weak-ssl-ciphers no-zlib no-zlib-dynamic",
  perl_archname => "darwin-thread-multi-2level",
  perl_cmd => "/opt/homebrew/Cellar/perl/5.38.2_1/bin/perl",
  perl_version => "5.38.2",
  perlargv => [ "ios64-cross", "--prefix=/Users/varun/Documents/Projects/CPP/Demo/build-ios/staging", "no-asm" ],
  perlenv => {
      "AR" => undef,
      "ARFLAGS" => undef,
      "AS" => undef,
      "ASFLAGS" => undef,
      "BUILDFILE" => undef,
      "CC" => undef,
      "CFLAGS" => undef,
      "CPP" => undef,
      "CPPDEFINES" => undef,
      "CPPFLAGS" => undef,
      "CPPINCLUDES" => undef,
      "CROSS_COMPILE" => undef,
      "CXX" => undef,
      "CXXFLAGS" => undef,
      "HASHBANGPERL" => undef,
      "LD" => undef,
      "LDFLAGS" => undef,
      "LDLIBS" => undef,
      "MT" => undef,
      "MTFLAGS" => undef,
      "OPENSSL_LOCAL_CONFIG_DIR" => undef,
      "PERL" => undef,
      "RANLIB" => undef,
      "RC" => undef,
      "RCFLAGS" => undef,
      "RM" => undef,
      "WINDRES" => undef,
      "__CNF_CFLAGS" => undef,
      "__CNF_CPPDEFINES" => undef,
      "__CNF_CPPFLAGS" => undef,
      "__CNF_CPPINCLUDES" => undef,
      "__CNF_CXXFLAGS" => undef,
      "__CNF_LDFLAGS" => undef,
      "__CNF_LDLIBS" => undef,
  },
  prefix => "/Users/varun/Documents/Projects/CPP/Demo/build-ios/staging",
  processor => "",
  rc4_int => "unsigned char",
  sdirs => [ "objects", "md4", "md5", "sha", "mdc2", "hmac", "ripemd", "whrlpool", "poly1305", "blake2", "siphash", "sm3", "des", "aes", "rc2", "rc4", "idea", "aria", "bf", "cast", "camellia", "seed", "sm4", "chacha", "modes", "bn", "ec", "rsa", "dsa", "dh", "sm2", "dso", "buffer", "bio", "stack", "lhash", "rand", "err", "evp", "asn1", "pem", "x509", "x509v3", "conf", "txt_db", "pkcs7", "pkcs12", "comp", "ocsp", "ui", "cms", "ts", "srp", "cmac", "ct", "async", "kdf", "store" ],
  shlib_major => "1",
  shlib_minor => "1",
  shlib_version_history => "",
  shlib_version_number => "1.1",
  sourcedir => "../../../../../../../ThirdParty/openssl-1.1.1c",
  target => "ios64-cross",
  tdirs => [ "ossl_shim" ],
  version => "1.1.1c",
  version_num => "0x1010103fL",
);

our %target = (
  AR => "ar",
  ARFLAGS => "r",
  CC => "cc",
  CFLAGS => "-O3",
  HASHBANGPERL => "/usr/bin/env perl",
  RANLIB => "ranlib -c",
  RC => "windres",
  _conf_fname_int => [ "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/openssl-1.1.1c/Configurations/00-base-templates.conf", "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/openssl-1.1.1c/Configurations/00-base-templates.conf", "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/openssl-1.1.1c/Configurations/10-main.conf", "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/openssl-1.1.1c/Configurations/15-ios.conf", "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/openssl-1.1.1c/Configurations/15-ios.conf", "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/openssl-1.1.1c/Configurations/15-ios.conf", "/Users/varun/Documents/Projects/CPP/Demo/ThirdParty/openssl-1.1.1c/Configurations/shared-info.pl" ],
  aes_asm_src => "aes_core.c aes_cbc.c",
  aes_obj => "aes_core.o aes_cbc.o",
  apps_aux_src => "",
  apps_init_src => "",
  apps_obj => "",
  bf_asm_src => "bf_enc.c",
  bf_obj => "bf_enc.o",
  bn_asm_src => "bn_asm.c",
  bn_obj => "bn_asm.o",
  bn_ops => "SIXTY_FOUR_BIT_LONG RC4_CHAR",
  build_file => "Makefile",
  build_scheme => [ "unified", "unix" ],
  cast_asm_src => "c_enc.c",
  cast_obj => "c_enc.o",
  cflags => "-arch arm64 -mios-version-min=7.0.0 -fno-common -isysroot \$(CROSS_TOP)/SDKs/\$(CROSS_SDK)",
  chacha_asm_src => "chacha_enc.c",
  chacha_obj => "chacha_enc.o",
  cmll_asm_src => "camellia.c cmll_misc.c cmll_cbc.c",
  cmll_obj => "camellia.o cmll_misc.o cmll_cbc.o",
  cppflags => "-D_REENTRANT",
  cpuid_asm_src => "mem_clr.c",
  cpuid_obj => "mem_clr.o",
  defines => [  ],
  des_asm_src => "des_enc.c fcrypt_b.c",
  des_obj => "des_enc.o fcrypt_b.o",
  disable => [ "engine", "async" ],
  dso_extension => ".dylib",
  dso_scheme => "dlfcn",
  ec_asm_src => "",
  ec_obj => "",
  enable => [  ],
  exe_extension => "",
  includes => [  ],
  keccak1600_asm_src => "keccak1600.c",
  keccak1600_obj => "keccak1600.o",
  lflags => "-Wl,-search_paths_first",
  lib_cflags => "",
  lib_cppflags => "",
  lib_defines => [  ],
  md5_asm_src => "",
  md5_obj => "",
  modes_asm_src => "",
  modes_obj => "",
  module_cflags => "-fPIC",
  module_cxxflags => "",
  module_ldflags => "-bundle",
  padlock_asm_src => "",
  padlock_obj => "",
  perlasm_scheme => "ios64",
  poly1305_asm_src => "",
  poly1305_obj => "",
  rc4_asm_src => "rc4_enc.c rc4_skey.c",
  rc4_obj => "rc4_enc.o rc4_skey.o",
  rc5_asm_src => "rc5_enc.c",
  rc5_obj => "rc5_enc.o",
  rmd160_asm_src => "",
  rmd160_obj => "",
  shared_cflag => "-fPIC",
  shared_defines => [  ],
  shared_extension => ".\$(SHLIB_VERSION_NUMBER).dylib",
  shared_extension_simple => ".dylib",
  shared_ldflag => "-dynamiclib -current_version \$(SHLIB_VERSION_NUMBER) -compatibility_version \$(SHLIB_VERSION_NUMBER)",
  shared_rcflag => "",
  shared_sonameflag => "-install_name \$(INSTALLTOP)/\$(LIBDIR)/",
  shared_target => "darwin-shared",
  sys_id => "iOS",
  template => "1",
  thread_defines => [  ],
  thread_scheme => "pthreads",
  unistd => "<unistd.h>",
  uplink_aux_src => "",
  uplink_obj => "",
  wp_asm_src => "wp_block.c",
  wp_obj => "wp_block.o",
);

our %available_protocols = (
  tls => [ "ssl3", "tls1", "tls1_1", "tls1_2", "tls1_3" ],
  dtls => [ "dtls1", "dtls1_2" ],
);

our @disablables = (
  "afalgeng",
  "aria",
  "asan",
  "asm",
  "async",
  "autoalginit",
  "autoerrinit",
  "autoload-config",
  "bf",
  "blake2",
  "buildtest-c\\+\\+",
  "camellia",
  "capieng",
  "cast",
  "chacha",
  "cmac",
  "cms",
  "comp",
  "crypto-mdebug",
  "crypto-mdebug-backtrace",
  "ct",
  "deprecated",
  "des",
  "devcryptoeng",
  "dgram",
  "dh",
  "dsa",
  "dtls",
  "dynamic-engine",
  "ec",
  "ec2m",
  "ecdh",
  "ecdsa",
  "ec_nistp_64_gcc_128",
  "egd",
  "engine",
  "err",
  "external-tests",
  "filenames",
  "fuzz-libfuzzer",
  "fuzz-afl",
  "gost",
  "heartbeats",
  "hw(-.+)?",
  "idea",
  "makedepend",
  "md2",
  "md4",
  "mdc2",
  "msan",
  "multiblock",
  "nextprotoneg",
  "pinshared",
  "ocb",
  "ocsp",
  "pic",
  "poly1305",
  "posix-io",
  "psk",
  "rc2",
  "rc4",
  "rc5",
  "rdrand",
  "rfc3779",
  "rmd160",
  "scrypt",
  "sctp",
  "seed",
  "shared",
  "siphash",
  "sm2",
  "sm3",
  "sm4",
  "sock",
  "srp",
  "srtp",
  "sse2",
  "ssl",
  "ssl-trace",
  "static-engine",
  "stdio",
  "tests",
  "threads",
  "tls",
  "ts",
  "ubsan",
  "ui-console",
  "unit-test",
  "whirlpool",
  "weak-ssl-ciphers",
  "zlib",
  "zlib-dynamic",
  "ssl3",
  "ssl3-method",
  "tls1",
  "tls1-method",
  "tls1_1",
  "tls1_1-method",
  "tls1_2",
  "tls1_2-method",
  "tls1_3",
  "dtls1",
  "dtls1-method",
  "dtls1_2",
  "dtls1_2-method",
);

our %disabled = (
  "afalgeng" => "cascade",
  "asan" => "default",
  "asm" => "option",
  "async" => "config",
  "buildtest-c++" => "default",
  "crypto-mdebug" => "default",
  "crypto-mdebug-backtrace" => "default",
  "devcryptoeng" => "default",
  "ec_nistp_64_gcc_128" => "default",
  "egd" => "default",
  "engine" => "config",
  "external-tests" => "default",
  "fuzz-afl" => "default",
  "fuzz-libfuzzer" => "default",
  "heartbeats" => "default",
  "md2" => "default",
  "msan" => "default",
  "rc5" => "default",
  "sctp" => "default",
  "ssl-trace" => "default",
  "ssl3" => "default",
  "ssl3-method" => "default",
  "ubsan" => "default",
  "unit-test" => "default",
  "weak-ssl-ciphers" => "default",
  "zlib" => "default",
  "zlib-dynamic" => "default",
);

our %withargs = (
);

our %unified_info = (
    "depends" =>
        {
            "" =>
                [
                    "crypto/include/internal/bn_conf.h",
                    "crypto/include/internal/dso_conf.h",
                    "include/openssl/opensslconf.h",
                ],
            "apps/asn1pars.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/ca.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/ciphers.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/cms.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/crl.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/crl2p7.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/dgst.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/dhparam.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/dsa.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/dsaparam.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/ec.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/ecparam.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/enc.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/engine.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/errstr.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/gendsa.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/genpkey.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/genrsa.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/nseq.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/ocsp.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/openssl" =>
                [
                    "apps/libapps.a",
                    "libssl",
                ],
            "apps/openssl.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/passwd.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/pkcs12.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/pkcs7.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/pkcs8.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/pkey.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/pkeyparam.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/pkeyutl.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/prime.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/progs.h" =>
                [
                    "configdata.pm",
                ],
            "apps/rand.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/rehash.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/req.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/rsa.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/rsautl.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/s_client.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/s_server.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/s_time.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/sess_id.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/smime.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/speed.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/spkac.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/srp.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/storeutl.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/ts.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/verify.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/version.o" =>
                [
                    "apps/progs.h",
                ],
            "apps/x509.o" =>
                [
                    "apps/progs.h",
                ],
            "crypto/aes/aes-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/aes/aesni-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/aes/aest4-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/sparcv9_modes.pl",
                ],
            "crypto/aes/vpaes-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/bf/bf-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/cbc.pl",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/bn/bn-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/bn/co-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/bn/x86-gf2m.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/bn/x86-mont.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/buildinf.h" =>
                [
                    "configdata.pm",
                ],
            "crypto/camellia/cmll-x86.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/camellia/cmllt4-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/sparcv9_modes.pl",
                ],
            "crypto/cast/cast-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/cbc.pl",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/cversion.o" =>
                [
                    "crypto/buildinf.h",
                ],
            "crypto/des/crypt586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/cbc.pl",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/des/des-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/cbc.pl",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/include/internal/bn_conf.h" =>
                [
                    "configdata.pm",
                ],
            "crypto/include/internal/dso_conf.h" =>
                [
                    "configdata.pm",
                ],
            "crypto/rc4/rc4-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/ripemd/rmd-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/sha/sha1-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/sha/sha256-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/sha/sha512-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/whrlpool/wp-mmx.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "crypto/x86cpuid.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/perlasm/x86asm.pl",
                ],
            "fuzz/asn1-test" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "fuzz/asn1parse-test" =>
                [
                    "libcrypto",
                ],
            "fuzz/bignum-test" =>
                [
                    "libcrypto",
                ],
            "fuzz/bndiv-test" =>
                [
                    "libcrypto",
                ],
            "fuzz/client-test" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "fuzz/cms-test" =>
                [
                    "libcrypto",
                ],
            "fuzz/conf-test" =>
                [
                    "libcrypto",
                ],
            "fuzz/crl-test" =>
                [
                    "libcrypto",
                ],
            "fuzz/ct-test" =>
                [
                    "libcrypto",
                ],
            "fuzz/server-test" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "fuzz/x509-test" =>
                [
                    "libcrypto",
                ],
            "include/openssl/opensslconf.h" =>
                [
                    "configdata.pm",
                ],
            "libssl" =>
                [
                    "libcrypto",
                ],
            "test/aborttest" =>
                [
                    "libcrypto",
                ],
            "test/afalgtest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/asn1_decode_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/asn1_encode_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/asn1_internal_test" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/asn1_string_table_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/asn1_time_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/asynciotest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/asynctest" =>
                [
                    "libcrypto",
                ],
            "test/bad_dtls_test" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/bftest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/bio_callback_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/bio_enc_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/bio_memleak_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/bioprinttest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/bntest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/buildtest_c_aes" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_asn1" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_asn1t" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_bio" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_blowfish" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_bn" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_buffer" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_camellia" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_cast" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_cmac" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_cms" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_comp" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_conf" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_conf_api" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_crypto" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ct" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_des" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_dh" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_dsa" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_dtls1" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_e_os2" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ebcdic" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ec" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ecdh" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ecdsa" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_evp" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_hmac" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_idea" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_kdf" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_lhash" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_md4" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_md5" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_mdc2" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_modes" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_obj_mac" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_objects" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ocsp" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_opensslv" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ossl_typ" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_pem" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_pem2" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_pkcs12" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_pkcs7" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_rand" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_rand_drbg" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_rc2" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_rc4" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ripemd" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_rsa" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_safestack" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_seed" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_sha" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_srp" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_srtp" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ssl" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ssl2" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_stack" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_store" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_symhacks" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_tls1" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ts" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_txt_db" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_ui" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_whrlpool" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_x509" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_x509_vfy" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/buildtest_c_x509v3" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/casttest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/chacha_internal_test" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/cipherbytes_test" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/cipherlist_test" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/ciphername_test" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/clienthellotest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/cmsapitest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/conf_include_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/constant_time_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/crltest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/ct_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/ctype_internal_test" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/curve448_internal_test" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/d2i_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/danetest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/destest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/dhtest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/drbg_cavs_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/drbgtest" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/dsa_no_digest_size_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/dsatest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/dtls_mtu_test" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/dtlstest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/dtlsv1listentest" =>
                [
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/ec_internal_test" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/ecdsatest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/ecstresstest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/ectest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/enginetest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/errtest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/evp_extra_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/evp_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/exdatatest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/exptest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/fatalerrtest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/gmdifftest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/gosttest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/hmactest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/ideatest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/igetest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/lhash_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/libtestutil.a" =>
                [
                    "libcrypto",
                ],
            "test/md2test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/mdc2_internal_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/mdc2test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/memleaktest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/modes_internal_test" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/ocspapitest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/packettest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/pbelutest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/pemtest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/pkey_meth_kdf_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/pkey_meth_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/poly1305_internal_test" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/rc2test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/rc4test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/rc5test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/rdrand_sanitytest" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/recordlentest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/rsa_mp_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/rsa_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/sanitytest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/secmemtest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/servername_test" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/siphash_internal_test" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/sm2_internal_test" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/sm4_internal_test" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/srptest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/ssl_cert_table_internal_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/ssl_test" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/ssl_test_ctx_test" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/sslapitest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/sslbuffertest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/sslcorrupttest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/ssltest_old" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "test/stack_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/sysdefaulttest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/test_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/threadstest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/time_offset_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/tls13ccstest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/tls13encryptiontest" =>
                [
                    "libcrypto",
                    "libssl.a",
                    "test/libtestutil.a",
                ],
            "test/tls13secretstest" =>
                [
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/uitest" =>
                [
                    "apps/libapps.a",
                    "libcrypto",
                    "libssl",
                    "test/libtestutil.a",
                ],
            "test/v3ext" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/v3nametest" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/verify_extra_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/versions" =>
                [
                    "libcrypto",
                ],
            "test/wpackettest" =>
                [
                    "libcrypto",
                    "libssl.a",
                    "test/libtestutil.a",
                ],
            "test/x509_check_cert_pkey_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/x509_dup_cert_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/x509_internal_test" =>
                [
                    "libcrypto.a",
                    "test/libtestutil.a",
                ],
            "test/x509_time_test" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
            "test/x509aux" =>
                [
                    "libcrypto",
                    "test/libtestutil.a",
                ],
        },
    "dirinfo" =>
        {
            "apps" =>
                {
                    "products" =>
                        {
                            "bin" =>
                                [
                                    "apps/openssl",
                                ],
                            "lib" =>
                                [
                                    "apps/libapps.a",
                                ],
                        },
                },
            "crypto" =>
                {
                    "deps" =>
                        [
                            "crypto/cpt_err.o",
                            "crypto/cryptlib.o",
                            "crypto/ctype.o",
                            "crypto/cversion.o",
                            "crypto/ebcdic.o",
                            "crypto/ex_data.o",
                            "crypto/getenv.o",
                            "crypto/init.o",
                            "crypto/mem.o",
                            "crypto/mem_clr.o",
                            "crypto/mem_dbg.o",
                            "crypto/mem_sec.o",
                            "crypto/o_dir.o",
                            "crypto/o_fips.o",
                            "crypto/o_fopen.o",
                            "crypto/o_init.o",
                            "crypto/o_str.o",
                            "crypto/o_time.o",
                            "crypto/threads_none.o",
                            "crypto/threads_pthread.o",
                            "crypto/threads_win.o",
                            "crypto/uid.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/aes" =>
                {
                    "deps" =>
                        [
                            "crypto/aes/aes_cbc.o",
                            "crypto/aes/aes_cfb.o",
                            "crypto/aes/aes_core.o",
                            "crypto/aes/aes_ecb.o",
                            "crypto/aes/aes_ige.o",
                            "crypto/aes/aes_misc.o",
                            "crypto/aes/aes_ofb.o",
                            "crypto/aes/aes_wrap.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/aria" =>
                {
                    "deps" =>
                        [
                            "crypto/aria/aria.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/asn1" =>
                {
                    "deps" =>
                        [
                            "crypto/asn1/a_bitstr.o",
                            "crypto/asn1/a_d2i_fp.o",
                            "crypto/asn1/a_digest.o",
                            "crypto/asn1/a_dup.o",
                            "crypto/asn1/a_gentm.o",
                            "crypto/asn1/a_i2d_fp.o",
                            "crypto/asn1/a_int.o",
                            "crypto/asn1/a_mbstr.o",
                            "crypto/asn1/a_object.o",
                            "crypto/asn1/a_octet.o",
                            "crypto/asn1/a_print.o",
                            "crypto/asn1/a_sign.o",
                            "crypto/asn1/a_strex.o",
                            "crypto/asn1/a_strnid.o",
                            "crypto/asn1/a_time.o",
                            "crypto/asn1/a_type.o",
                            "crypto/asn1/a_utctm.o",
                            "crypto/asn1/a_utf8.o",
                            "crypto/asn1/a_verify.o",
                            "crypto/asn1/ameth_lib.o",
                            "crypto/asn1/asn1_err.o",
                            "crypto/asn1/asn1_gen.o",
                            "crypto/asn1/asn1_item_list.o",
                            "crypto/asn1/asn1_lib.o",
                            "crypto/asn1/asn1_par.o",
                            "crypto/asn1/asn_mime.o",
                            "crypto/asn1/asn_moid.o",
                            "crypto/asn1/asn_mstbl.o",
                            "crypto/asn1/asn_pack.o",
                            "crypto/asn1/bio_asn1.o",
                            "crypto/asn1/bio_ndef.o",
                            "crypto/asn1/d2i_pr.o",
                            "crypto/asn1/d2i_pu.o",
                            "crypto/asn1/evp_asn1.o",
                            "crypto/asn1/f_int.o",
                            "crypto/asn1/f_string.o",
                            "crypto/asn1/i2d_pr.o",
                            "crypto/asn1/i2d_pu.o",
                            "crypto/asn1/n_pkey.o",
                            "crypto/asn1/nsseq.o",
                            "crypto/asn1/p5_pbe.o",
                            "crypto/asn1/p5_pbev2.o",
                            "crypto/asn1/p5_scrypt.o",
                            "crypto/asn1/p8_pkey.o",
                            "crypto/asn1/t_bitst.o",
                            "crypto/asn1/t_pkey.o",
                            "crypto/asn1/t_spki.o",
                            "crypto/asn1/tasn_dec.o",
                            "crypto/asn1/tasn_enc.o",
                            "crypto/asn1/tasn_fre.o",
                            "crypto/asn1/tasn_new.o",
                            "crypto/asn1/tasn_prn.o",
                            "crypto/asn1/tasn_scn.o",
                            "crypto/asn1/tasn_typ.o",
                            "crypto/asn1/tasn_utl.o",
                            "crypto/asn1/x_algor.o",
                            "crypto/asn1/x_bignum.o",
                            "crypto/asn1/x_info.o",
                            "crypto/asn1/x_int64.o",
                            "crypto/asn1/x_long.o",
                            "crypto/asn1/x_pkey.o",
                            "crypto/asn1/x_sig.o",
                            "crypto/asn1/x_spki.o",
                            "crypto/asn1/x_val.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/async" =>
                {
                    "deps" =>
                        [
                            "crypto/async/async.o",
                            "crypto/async/async_err.o",
                            "crypto/async/async_wait.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/async/arch" =>
                {
                    "deps" =>
                        [
                            "crypto/async/arch/async_null.o",
                            "crypto/async/arch/async_posix.o",
                            "crypto/async/arch/async_win.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/bf" =>
                {
                    "deps" =>
                        [
                            "crypto/bf/bf_cfb64.o",
                            "crypto/bf/bf_ecb.o",
                            "crypto/bf/bf_enc.o",
                            "crypto/bf/bf_ofb64.o",
                            "crypto/bf/bf_skey.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/bio" =>
                {
                    "deps" =>
                        [
                            "crypto/bio/b_addr.o",
                            "crypto/bio/b_dump.o",
                            "crypto/bio/b_print.o",
                            "crypto/bio/b_sock.o",
                            "crypto/bio/b_sock2.o",
                            "crypto/bio/bf_buff.o",
                            "crypto/bio/bf_lbuf.o",
                            "crypto/bio/bf_nbio.o",
                            "crypto/bio/bf_null.o",
                            "crypto/bio/bio_cb.o",
                            "crypto/bio/bio_err.o",
                            "crypto/bio/bio_lib.o",
                            "crypto/bio/bio_meth.o",
                            "crypto/bio/bss_acpt.o",
                            "crypto/bio/bss_bio.o",
                            "crypto/bio/bss_conn.o",
                            "crypto/bio/bss_dgram.o",
                            "crypto/bio/bss_fd.o",
                            "crypto/bio/bss_file.o",
                            "crypto/bio/bss_log.o",
                            "crypto/bio/bss_mem.o",
                            "crypto/bio/bss_null.o",
                            "crypto/bio/bss_sock.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/blake2" =>
                {
                    "deps" =>
                        [
                            "crypto/blake2/blake2b.o",
                            "crypto/blake2/blake2s.o",
                            "crypto/blake2/m_blake2b.o",
                            "crypto/blake2/m_blake2s.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/bn" =>
                {
                    "deps" =>
                        [
                            "crypto/bn/bn_add.o",
                            "crypto/bn/bn_asm.o",
                            "crypto/bn/bn_blind.o",
                            "crypto/bn/bn_const.o",
                            "crypto/bn/bn_ctx.o",
                            "crypto/bn/bn_depr.o",
                            "crypto/bn/bn_dh.o",
                            "crypto/bn/bn_div.o",
                            "crypto/bn/bn_err.o",
                            "crypto/bn/bn_exp.o",
                            "crypto/bn/bn_exp2.o",
                            "crypto/bn/bn_gcd.o",
                            "crypto/bn/bn_gf2m.o",
                            "crypto/bn/bn_intern.o",
                            "crypto/bn/bn_kron.o",
                            "crypto/bn/bn_lib.o",
                            "crypto/bn/bn_mod.o",
                            "crypto/bn/bn_mont.o",
                            "crypto/bn/bn_mpi.o",
                            "crypto/bn/bn_mul.o",
                            "crypto/bn/bn_nist.o",
                            "crypto/bn/bn_prime.o",
                            "crypto/bn/bn_print.o",
                            "crypto/bn/bn_rand.o",
                            "crypto/bn/bn_recp.o",
                            "crypto/bn/bn_shift.o",
                            "crypto/bn/bn_sqr.o",
                            "crypto/bn/bn_sqrt.o",
                            "crypto/bn/bn_srp.o",
                            "crypto/bn/bn_word.o",
                            "crypto/bn/bn_x931p.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/buffer" =>
                {
                    "deps" =>
                        [
                            "crypto/buffer/buf_err.o",
                            "crypto/buffer/buffer.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/camellia" =>
                {
                    "deps" =>
                        [
                            "crypto/camellia/camellia.o",
                            "crypto/camellia/cmll_cbc.o",
                            "crypto/camellia/cmll_cfb.o",
                            "crypto/camellia/cmll_ctr.o",
                            "crypto/camellia/cmll_ecb.o",
                            "crypto/camellia/cmll_misc.o",
                            "crypto/camellia/cmll_ofb.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/cast" =>
                {
                    "deps" =>
                        [
                            "crypto/cast/c_cfb64.o",
                            "crypto/cast/c_ecb.o",
                            "crypto/cast/c_enc.o",
                            "crypto/cast/c_ofb64.o",
                            "crypto/cast/c_skey.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/chacha" =>
                {
                    "deps" =>
                        [
                            "crypto/chacha/chacha_enc.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/cmac" =>
                {
                    "deps" =>
                        [
                            "crypto/cmac/cm_ameth.o",
                            "crypto/cmac/cm_pmeth.o",
                            "crypto/cmac/cmac.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/cms" =>
                {
                    "deps" =>
                        [
                            "crypto/cms/cms_asn1.o",
                            "crypto/cms/cms_att.o",
                            "crypto/cms/cms_cd.o",
                            "crypto/cms/cms_dd.o",
                            "crypto/cms/cms_enc.o",
                            "crypto/cms/cms_env.o",
                            "crypto/cms/cms_err.o",
                            "crypto/cms/cms_ess.o",
                            "crypto/cms/cms_io.o",
                            "crypto/cms/cms_kari.o",
                            "crypto/cms/cms_lib.o",
                            "crypto/cms/cms_pwri.o",
                            "crypto/cms/cms_sd.o",
                            "crypto/cms/cms_smime.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/comp" =>
                {
                    "deps" =>
                        [
                            "crypto/comp/c_zlib.o",
                            "crypto/comp/comp_err.o",
                            "crypto/comp/comp_lib.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/conf" =>
                {
                    "deps" =>
                        [
                            "crypto/conf/conf_api.o",
                            "crypto/conf/conf_def.o",
                            "crypto/conf/conf_err.o",
                            "crypto/conf/conf_lib.o",
                            "crypto/conf/conf_mall.o",
                            "crypto/conf/conf_mod.o",
                            "crypto/conf/conf_sap.o",
                            "crypto/conf/conf_ssl.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/ct" =>
                {
                    "deps" =>
                        [
                            "crypto/ct/ct_b64.o",
                            "crypto/ct/ct_err.o",
                            "crypto/ct/ct_log.o",
                            "crypto/ct/ct_oct.o",
                            "crypto/ct/ct_policy.o",
                            "crypto/ct/ct_prn.o",
                            "crypto/ct/ct_sct.o",
                            "crypto/ct/ct_sct_ctx.o",
                            "crypto/ct/ct_vfy.o",
                            "crypto/ct/ct_x509v3.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/des" =>
                {
                    "deps" =>
                        [
                            "crypto/des/cbc_cksm.o",
                            "crypto/des/cbc_enc.o",
                            "crypto/des/cfb64ede.o",
                            "crypto/des/cfb64enc.o",
                            "crypto/des/cfb_enc.o",
                            "crypto/des/des_enc.o",
                            "crypto/des/ecb3_enc.o",
                            "crypto/des/ecb_enc.o",
                            "crypto/des/fcrypt.o",
                            "crypto/des/fcrypt_b.o",
                            "crypto/des/ofb64ede.o",
                            "crypto/des/ofb64enc.o",
                            "crypto/des/ofb_enc.o",
                            "crypto/des/pcbc_enc.o",
                            "crypto/des/qud_cksm.o",
                            "crypto/des/rand_key.o",
                            "crypto/des/set_key.o",
                            "crypto/des/str2key.o",
                            "crypto/des/xcbc_enc.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/dh" =>
                {
                    "deps" =>
                        [
                            "crypto/dh/dh_ameth.o",
                            "crypto/dh/dh_asn1.o",
                            "crypto/dh/dh_check.o",
                            "crypto/dh/dh_depr.o",
                            "crypto/dh/dh_err.o",
                            "crypto/dh/dh_gen.o",
                            "crypto/dh/dh_kdf.o",
                            "crypto/dh/dh_key.o",
                            "crypto/dh/dh_lib.o",
                            "crypto/dh/dh_meth.o",
                            "crypto/dh/dh_pmeth.o",
                            "crypto/dh/dh_prn.o",
                            "crypto/dh/dh_rfc5114.o",
                            "crypto/dh/dh_rfc7919.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/dsa" =>
                {
                    "deps" =>
                        [
                            "crypto/dsa/dsa_ameth.o",
                            "crypto/dsa/dsa_asn1.o",
                            "crypto/dsa/dsa_depr.o",
                            "crypto/dsa/dsa_err.o",
                            "crypto/dsa/dsa_gen.o",
                            "crypto/dsa/dsa_key.o",
                            "crypto/dsa/dsa_lib.o",
                            "crypto/dsa/dsa_meth.o",
                            "crypto/dsa/dsa_ossl.o",
                            "crypto/dsa/dsa_pmeth.o",
                            "crypto/dsa/dsa_prn.o",
                            "crypto/dsa/dsa_sign.o",
                            "crypto/dsa/dsa_vrf.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/dso" =>
                {
                    "deps" =>
                        [
                            "crypto/dso/dso_dl.o",
                            "crypto/dso/dso_dlfcn.o",
                            "crypto/dso/dso_err.o",
                            "crypto/dso/dso_lib.o",
                            "crypto/dso/dso_openssl.o",
                            "crypto/dso/dso_vms.o",
                            "crypto/dso/dso_win32.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/ec" =>
                {
                    "deps" =>
                        [
                            "crypto/ec/curve25519.o",
                            "crypto/ec/ec2_oct.o",
                            "crypto/ec/ec2_smpl.o",
                            "crypto/ec/ec_ameth.o",
                            "crypto/ec/ec_asn1.o",
                            "crypto/ec/ec_check.o",
                            "crypto/ec/ec_curve.o",
                            "crypto/ec/ec_cvt.o",
                            "crypto/ec/ec_err.o",
                            "crypto/ec/ec_key.o",
                            "crypto/ec/ec_kmeth.o",
                            "crypto/ec/ec_lib.o",
                            "crypto/ec/ec_mult.o",
                            "crypto/ec/ec_oct.o",
                            "crypto/ec/ec_pmeth.o",
                            "crypto/ec/ec_print.o",
                            "crypto/ec/ecdh_kdf.o",
                            "crypto/ec/ecdh_ossl.o",
                            "crypto/ec/ecdsa_ossl.o",
                            "crypto/ec/ecdsa_sign.o",
                            "crypto/ec/ecdsa_vrf.o",
                            "crypto/ec/eck_prn.o",
                            "crypto/ec/ecp_mont.o",
                            "crypto/ec/ecp_nist.o",
                            "crypto/ec/ecp_nistp224.o",
                            "crypto/ec/ecp_nistp256.o",
                            "crypto/ec/ecp_nistp521.o",
                            "crypto/ec/ecp_nistputil.o",
                            "crypto/ec/ecp_oct.o",
                            "crypto/ec/ecp_smpl.o",
                            "crypto/ec/ecx_meth.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/ec/curve448" =>
                {
                    "deps" =>
                        [
                            "crypto/ec/curve448/curve448.o",
                            "crypto/ec/curve448/curve448_tables.o",
                            "crypto/ec/curve448/eddsa.o",
                            "crypto/ec/curve448/f_generic.o",
                            "crypto/ec/curve448/scalar.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/ec/curve448/arch_32" =>
                {
                    "deps" =>
                        [
                            "crypto/ec/curve448/arch_32/f_impl.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/err" =>
                {
                    "deps" =>
                        [
                            "crypto/err/err.o",
                            "crypto/err/err_all.o",
                            "crypto/err/err_prn.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/evp" =>
                {
                    "deps" =>
                        [
                            "crypto/evp/bio_b64.o",
                            "crypto/evp/bio_enc.o",
                            "crypto/evp/bio_md.o",
                            "crypto/evp/bio_ok.o",
                            "crypto/evp/c_allc.o",
                            "crypto/evp/c_alld.o",
                            "crypto/evp/cmeth_lib.o",
                            "crypto/evp/digest.o",
                            "crypto/evp/e_aes.o",
                            "crypto/evp/e_aes_cbc_hmac_sha1.o",
                            "crypto/evp/e_aes_cbc_hmac_sha256.o",
                            "crypto/evp/e_aria.o",
                            "crypto/evp/e_bf.o",
                            "crypto/evp/e_camellia.o",
                            "crypto/evp/e_cast.o",
                            "crypto/evp/e_chacha20_poly1305.o",
                            "crypto/evp/e_des.o",
                            "crypto/evp/e_des3.o",
                            "crypto/evp/e_idea.o",
                            "crypto/evp/e_null.o",
                            "crypto/evp/e_old.o",
                            "crypto/evp/e_rc2.o",
                            "crypto/evp/e_rc4.o",
                            "crypto/evp/e_rc4_hmac_md5.o",
                            "crypto/evp/e_rc5.o",
                            "crypto/evp/e_seed.o",
                            "crypto/evp/e_sm4.o",
                            "crypto/evp/e_xcbc_d.o",
                            "crypto/evp/encode.o",
                            "crypto/evp/evp_cnf.o",
                            "crypto/evp/evp_enc.o",
                            "crypto/evp/evp_err.o",
                            "crypto/evp/evp_key.o",
                            "crypto/evp/evp_lib.o",
                            "crypto/evp/evp_pbe.o",
                            "crypto/evp/evp_pkey.o",
                            "crypto/evp/m_md2.o",
                            "crypto/evp/m_md4.o",
                            "crypto/evp/m_md5.o",
                            "crypto/evp/m_md5_sha1.o",
                            "crypto/evp/m_mdc2.o",
                            "crypto/evp/m_null.o",
                            "crypto/evp/m_ripemd.o",
                            "crypto/evp/m_sha1.o",
                            "crypto/evp/m_sha3.o",
                            "crypto/evp/m_sigver.o",
                            "crypto/evp/m_wp.o",
                            "crypto/evp/names.o",
                            "crypto/evp/p5_crpt.o",
                            "crypto/evp/p5_crpt2.o",
                            "crypto/evp/p_dec.o",
                            "crypto/evp/p_enc.o",
                            "crypto/evp/p_lib.o",
                            "crypto/evp/p_open.o",
                            "crypto/evp/p_seal.o",
                            "crypto/evp/p_sign.o",
                            "crypto/evp/p_verify.o",
                            "crypto/evp/pbe_scrypt.o",
                            "crypto/evp/pmeth_fn.o",
                            "crypto/evp/pmeth_gn.o",
                            "crypto/evp/pmeth_lib.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/hmac" =>
                {
                    "deps" =>
                        [
                            "crypto/hmac/hm_ameth.o",
                            "crypto/hmac/hm_pmeth.o",
                            "crypto/hmac/hmac.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/idea" =>
                {
                    "deps" =>
                        [
                            "crypto/idea/i_cbc.o",
                            "crypto/idea/i_cfb64.o",
                            "crypto/idea/i_ecb.o",
                            "crypto/idea/i_ofb64.o",
                            "crypto/idea/i_skey.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/kdf" =>
                {
                    "deps" =>
                        [
                            "crypto/kdf/hkdf.o",
                            "crypto/kdf/kdf_err.o",
                            "crypto/kdf/scrypt.o",
                            "crypto/kdf/tls1_prf.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/lhash" =>
                {
                    "deps" =>
                        [
                            "crypto/lhash/lh_stats.o",
                            "crypto/lhash/lhash.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/md4" =>
                {
                    "deps" =>
                        [
                            "crypto/md4/md4_dgst.o",
                            "crypto/md4/md4_one.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/md5" =>
                {
                    "deps" =>
                        [
                            "crypto/md5/md5_dgst.o",
                            "crypto/md5/md5_one.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/mdc2" =>
                {
                    "deps" =>
                        [
                            "crypto/mdc2/mdc2_one.o",
                            "crypto/mdc2/mdc2dgst.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/modes" =>
                {
                    "deps" =>
                        [
                            "crypto/modes/cbc128.o",
                            "crypto/modes/ccm128.o",
                            "crypto/modes/cfb128.o",
                            "crypto/modes/ctr128.o",
                            "crypto/modes/cts128.o",
                            "crypto/modes/gcm128.o",
                            "crypto/modes/ocb128.o",
                            "crypto/modes/ofb128.o",
                            "crypto/modes/wrap128.o",
                            "crypto/modes/xts128.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/objects" =>
                {
                    "deps" =>
                        [
                            "crypto/objects/o_names.o",
                            "crypto/objects/obj_dat.o",
                            "crypto/objects/obj_err.o",
                            "crypto/objects/obj_lib.o",
                            "crypto/objects/obj_xref.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/ocsp" =>
                {
                    "deps" =>
                        [
                            "crypto/ocsp/ocsp_asn.o",
                            "crypto/ocsp/ocsp_cl.o",
                            "crypto/ocsp/ocsp_err.o",
                            "crypto/ocsp/ocsp_ext.o",
                            "crypto/ocsp/ocsp_ht.o",
                            "crypto/ocsp/ocsp_lib.o",
                            "crypto/ocsp/ocsp_prn.o",
                            "crypto/ocsp/ocsp_srv.o",
                            "crypto/ocsp/ocsp_vfy.o",
                            "crypto/ocsp/v3_ocsp.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/pem" =>
                {
                    "deps" =>
                        [
                            "crypto/pem/pem_all.o",
                            "crypto/pem/pem_err.o",
                            "crypto/pem/pem_info.o",
                            "crypto/pem/pem_lib.o",
                            "crypto/pem/pem_oth.o",
                            "crypto/pem/pem_pk8.o",
                            "crypto/pem/pem_pkey.o",
                            "crypto/pem/pem_sign.o",
                            "crypto/pem/pem_x509.o",
                            "crypto/pem/pem_xaux.o",
                            "crypto/pem/pvkfmt.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/pkcs12" =>
                {
                    "deps" =>
                        [
                            "crypto/pkcs12/p12_add.o",
                            "crypto/pkcs12/p12_asn.o",
                            "crypto/pkcs12/p12_attr.o",
                            "crypto/pkcs12/p12_crpt.o",
                            "crypto/pkcs12/p12_crt.o",
                            "crypto/pkcs12/p12_decr.o",
                            "crypto/pkcs12/p12_init.o",
                            "crypto/pkcs12/p12_key.o",
                            "crypto/pkcs12/p12_kiss.o",
                            "crypto/pkcs12/p12_mutl.o",
                            "crypto/pkcs12/p12_npas.o",
                            "crypto/pkcs12/p12_p8d.o",
                            "crypto/pkcs12/p12_p8e.o",
                            "crypto/pkcs12/p12_sbag.o",
                            "crypto/pkcs12/p12_utl.o",
                            "crypto/pkcs12/pk12err.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/pkcs7" =>
                {
                    "deps" =>
                        [
                            "crypto/pkcs7/bio_pk7.o",
                            "crypto/pkcs7/pk7_asn1.o",
                            "crypto/pkcs7/pk7_attr.o",
                            "crypto/pkcs7/pk7_doit.o",
                            "crypto/pkcs7/pk7_lib.o",
                            "crypto/pkcs7/pk7_mime.o",
                            "crypto/pkcs7/pk7_smime.o",
                            "crypto/pkcs7/pkcs7err.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/poly1305" =>
                {
                    "deps" =>
                        [
                            "crypto/poly1305/poly1305.o",
                            "crypto/poly1305/poly1305_ameth.o",
                            "crypto/poly1305/poly1305_pmeth.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/rand" =>
                {
                    "deps" =>
                        [
                            "crypto/rand/drbg_ctr.o",
                            "crypto/rand/drbg_lib.o",
                            "crypto/rand/rand_egd.o",
                            "crypto/rand/rand_err.o",
                            "crypto/rand/rand_lib.o",
                            "crypto/rand/rand_unix.o",
                            "crypto/rand/rand_vms.o",
                            "crypto/rand/rand_win.o",
                            "crypto/rand/randfile.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/rc2" =>
                {
                    "deps" =>
                        [
                            "crypto/rc2/rc2_cbc.o",
                            "crypto/rc2/rc2_ecb.o",
                            "crypto/rc2/rc2_skey.o",
                            "crypto/rc2/rc2cfb64.o",
                            "crypto/rc2/rc2ofb64.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/rc4" =>
                {
                    "deps" =>
                        [
                            "crypto/rc4/rc4_enc.o",
                            "crypto/rc4/rc4_skey.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/ripemd" =>
                {
                    "deps" =>
                        [
                            "crypto/ripemd/rmd_dgst.o",
                            "crypto/ripemd/rmd_one.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/rsa" =>
                {
                    "deps" =>
                        [
                            "crypto/rsa/rsa_ameth.o",
                            "crypto/rsa/rsa_asn1.o",
                            "crypto/rsa/rsa_chk.o",
                            "crypto/rsa/rsa_crpt.o",
                            "crypto/rsa/rsa_depr.o",
                            "crypto/rsa/rsa_err.o",
                            "crypto/rsa/rsa_gen.o",
                            "crypto/rsa/rsa_lib.o",
                            "crypto/rsa/rsa_meth.o",
                            "crypto/rsa/rsa_mp.o",
                            "crypto/rsa/rsa_none.o",
                            "crypto/rsa/rsa_oaep.o",
                            "crypto/rsa/rsa_ossl.o",
                            "crypto/rsa/rsa_pk1.o",
                            "crypto/rsa/rsa_pmeth.o",
                            "crypto/rsa/rsa_prn.o",
                            "crypto/rsa/rsa_pss.o",
                            "crypto/rsa/rsa_saos.o",
                            "crypto/rsa/rsa_sign.o",
                            "crypto/rsa/rsa_ssl.o",
                            "crypto/rsa/rsa_x931.o",
                            "crypto/rsa/rsa_x931g.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/seed" =>
                {
                    "deps" =>
                        [
                            "crypto/seed/seed.o",
                            "crypto/seed/seed_cbc.o",
                            "crypto/seed/seed_cfb.o",
                            "crypto/seed/seed_ecb.o",
                            "crypto/seed/seed_ofb.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/sha" =>
                {
                    "deps" =>
                        [
                            "crypto/sha/keccak1600.o",
                            "crypto/sha/sha1_one.o",
                            "crypto/sha/sha1dgst.o",
                            "crypto/sha/sha256.o",
                            "crypto/sha/sha512.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/siphash" =>
                {
                    "deps" =>
                        [
                            "crypto/siphash/siphash.o",
                            "crypto/siphash/siphash_ameth.o",
                            "crypto/siphash/siphash_pmeth.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/sm2" =>
                {
                    "deps" =>
                        [
                            "crypto/sm2/sm2_crypt.o",
                            "crypto/sm2/sm2_err.o",
                            "crypto/sm2/sm2_pmeth.o",
                            "crypto/sm2/sm2_sign.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/sm3" =>
                {
                    "deps" =>
                        [
                            "crypto/sm3/m_sm3.o",
                            "crypto/sm3/sm3.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/sm4" =>
                {
                    "deps" =>
                        [
                            "crypto/sm4/sm4.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/srp" =>
                {
                    "deps" =>
                        [
                            "crypto/srp/srp_lib.o",
                            "crypto/srp/srp_vfy.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/stack" =>
                {
                    "deps" =>
                        [
                            "crypto/stack/stack.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/store" =>
                {
                    "deps" =>
                        [
                            "crypto/store/loader_file.o",
                            "crypto/store/store_err.o",
                            "crypto/store/store_init.o",
                            "crypto/store/store_lib.o",
                            "crypto/store/store_register.o",
                            "crypto/store/store_strings.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/ts" =>
                {
                    "deps" =>
                        [
                            "crypto/ts/ts_asn1.o",
                            "crypto/ts/ts_conf.o",
                            "crypto/ts/ts_err.o",
                            "crypto/ts/ts_lib.o",
                            "crypto/ts/ts_req_print.o",
                            "crypto/ts/ts_req_utils.o",
                            "crypto/ts/ts_rsp_print.o",
                            "crypto/ts/ts_rsp_sign.o",
                            "crypto/ts/ts_rsp_utils.o",
                            "crypto/ts/ts_rsp_verify.o",
                            "crypto/ts/ts_verify_ctx.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/txt_db" =>
                {
                    "deps" =>
                        [
                            "crypto/txt_db/txt_db.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/ui" =>
                {
                    "deps" =>
                        [
                            "crypto/ui/ui_err.o",
                            "crypto/ui/ui_lib.o",
                            "crypto/ui/ui_null.o",
                            "crypto/ui/ui_openssl.o",
                            "crypto/ui/ui_util.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/whrlpool" =>
                {
                    "deps" =>
                        [
                            "crypto/whrlpool/wp_block.o",
                            "crypto/whrlpool/wp_dgst.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/x509" =>
                {
                    "deps" =>
                        [
                            "crypto/x509/by_dir.o",
                            "crypto/x509/by_file.o",
                            "crypto/x509/t_crl.o",
                            "crypto/x509/t_req.o",
                            "crypto/x509/t_x509.o",
                            "crypto/x509/x509_att.o",
                            "crypto/x509/x509_cmp.o",
                            "crypto/x509/x509_d2.o",
                            "crypto/x509/x509_def.o",
                            "crypto/x509/x509_err.o",
                            "crypto/x509/x509_ext.o",
                            "crypto/x509/x509_lu.o",
                            "crypto/x509/x509_meth.o",
                            "crypto/x509/x509_obj.o",
                            "crypto/x509/x509_r2x.o",
                            "crypto/x509/x509_req.o",
                            "crypto/x509/x509_set.o",
                            "crypto/x509/x509_trs.o",
                            "crypto/x509/x509_txt.o",
                            "crypto/x509/x509_v3.o",
                            "crypto/x509/x509_vfy.o",
                            "crypto/x509/x509_vpm.o",
                            "crypto/x509/x509cset.o",
                            "crypto/x509/x509name.o",
                            "crypto/x509/x509rset.o",
                            "crypto/x509/x509spki.o",
                            "crypto/x509/x509type.o",
                            "crypto/x509/x_all.o",
                            "crypto/x509/x_attrib.o",
                            "crypto/x509/x_crl.o",
                            "crypto/x509/x_exten.o",
                            "crypto/x509/x_name.o",
                            "crypto/x509/x_pubkey.o",
                            "crypto/x509/x_req.o",
                            "crypto/x509/x_x509.o",
                            "crypto/x509/x_x509a.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "crypto/x509v3" =>
                {
                    "deps" =>
                        [
                            "crypto/x509v3/pcy_cache.o",
                            "crypto/x509v3/pcy_data.o",
                            "crypto/x509v3/pcy_lib.o",
                            "crypto/x509v3/pcy_map.o",
                            "crypto/x509v3/pcy_node.o",
                            "crypto/x509v3/pcy_tree.o",
                            "crypto/x509v3/v3_addr.o",
                            "crypto/x509v3/v3_admis.o",
                            "crypto/x509v3/v3_akey.o",
                            "crypto/x509v3/v3_akeya.o",
                            "crypto/x509v3/v3_alt.o",
                            "crypto/x509v3/v3_asid.o",
                            "crypto/x509v3/v3_bcons.o",
                            "crypto/x509v3/v3_bitst.o",
                            "crypto/x509v3/v3_conf.o",
                            "crypto/x509v3/v3_cpols.o",
                            "crypto/x509v3/v3_crld.o",
                            "crypto/x509v3/v3_enum.o",
                            "crypto/x509v3/v3_extku.o",
                            "crypto/x509v3/v3_genn.o",
                            "crypto/x509v3/v3_ia5.o",
                            "crypto/x509v3/v3_info.o",
                            "crypto/x509v3/v3_int.o",
                            "crypto/x509v3/v3_lib.o",
                            "crypto/x509v3/v3_ncons.o",
                            "crypto/x509v3/v3_pci.o",
                            "crypto/x509v3/v3_pcia.o",
                            "crypto/x509v3/v3_pcons.o",
                            "crypto/x509v3/v3_pku.o",
                            "crypto/x509v3/v3_pmaps.o",
                            "crypto/x509v3/v3_prn.o",
                            "crypto/x509v3/v3_purp.o",
                            "crypto/x509v3/v3_skey.o",
                            "crypto/x509v3/v3_sxnet.o",
                            "crypto/x509v3/v3_tlsf.o",
                            "crypto/x509v3/v3_utl.o",
                            "crypto/x509v3/v3err.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libcrypto",
                                ],
                        },
                },
            "fuzz" =>
                {
                    "products" =>
                        {
                            "bin" =>
                                [
                                    "fuzz/asn1-test",
                                    "fuzz/asn1parse-test",
                                    "fuzz/bignum-test",
                                    "fuzz/bndiv-test",
                                    "fuzz/client-test",
                                    "fuzz/cms-test",
                                    "fuzz/conf-test",
                                    "fuzz/crl-test",
                                    "fuzz/ct-test",
                                    "fuzz/server-test",
                                    "fuzz/x509-test",
                                ],
                        },
                },
            "ssl" =>
                {
                    "deps" =>
                        [
                            "ssl/bio_ssl.o",
                            "ssl/d1_lib.o",
                            "ssl/d1_msg.o",
                            "ssl/d1_srtp.o",
                            "ssl/methods.o",
                            "ssl/packet.o",
                            "ssl/pqueue.o",
                            "ssl/s3_cbc.o",
                            "ssl/s3_enc.o",
                            "ssl/s3_lib.o",
                            "ssl/s3_msg.o",
                            "ssl/ssl_asn1.o",
                            "ssl/ssl_cert.o",
                            "ssl/ssl_ciph.o",
                            "ssl/ssl_conf.o",
                            "ssl/ssl_err.o",
                            "ssl/ssl_init.o",
                            "ssl/ssl_lib.o",
                            "ssl/ssl_mcnf.o",
                            "ssl/ssl_rsa.o",
                            "ssl/ssl_sess.o",
                            "ssl/ssl_stat.o",
                            "ssl/ssl_txt.o",
                            "ssl/ssl_utst.o",
                            "ssl/t1_enc.o",
                            "ssl/t1_lib.o",
                            "ssl/t1_trce.o",
                            "ssl/tls13_enc.o",
                            "ssl/tls_srp.o",
                            "ssl/packet.o",
                            "ssl/tls13_enc.o",
                        ],
                    "products" =>
                        {
                            "bin" =>
                                [
                                    "test/tls13secretstest",
                                ],
                            "lib" =>
                                [
                                    "libssl",
                                ],
                        },
                },
            "ssl/record" =>
                {
                    "deps" =>
                        [
                            "ssl/record/dtls1_bitmap.o",
                            "ssl/record/rec_layer_d1.o",
                            "ssl/record/rec_layer_s3.o",
                            "ssl/record/ssl3_buffer.o",
                            "ssl/record/ssl3_record.o",
                            "ssl/record/ssl3_record_tls13.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libssl",
                                ],
                        },
                },
            "ssl/statem" =>
                {
                    "deps" =>
                        [
                            "ssl/statem/extensions.o",
                            "ssl/statem/extensions_clnt.o",
                            "ssl/statem/extensions_cust.o",
                            "ssl/statem/extensions_srvr.o",
                            "ssl/statem/statem.o",
                            "ssl/statem/statem_clnt.o",
                            "ssl/statem/statem_dtls.o",
                            "ssl/statem/statem_lib.o",
                            "ssl/statem/statem_srvr.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "libssl",
                                ],
                        },
                },
            "test/testutil" =>
                {
                    "deps" =>
                        [
                            "test/testutil/basic_output.o",
                            "test/testutil/cb.o",
                            "test/testutil/driver.o",
                            "test/testutil/format_output.o",
                            "test/testutil/init.o",
                            "test/testutil/main.o",
                            "test/testutil/output_helpers.o",
                            "test/testutil/stanza.o",
                            "test/testutil/tap_bio.o",
                            "test/testutil/test_cleanup.o",
                            "test/testutil/tests.o",
                        ],
                    "products" =>
                        {
                            "lib" =>
                                [
                                    "test/libtestutil.a",
                                ],
                        },
                },
        },
    "engines" =>
        [
        ],
    "extra" =>
        [
            "crypto/alphacpuid.pl",
            "crypto/arm64cpuid.pl",
            "crypto/armv4cpuid.pl",
            "crypto/ia64cpuid.S",
            "crypto/pariscid.pl",
            "crypto/ppccpuid.pl",
            "crypto/x86_64cpuid.pl",
            "crypto/x86cpuid.pl",
            "ms/applink.c",
            "ms/uplink-x86.pl",
            "ms/uplink.c",
        ],
    "generate" =>
        {
            "apps/progs.h" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/progs.pl",
                    "\$(APPS_OPENSSL)",
                ],
            "crypto/aes/aes-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aes-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/aes/aes-armv4.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aes-armv4.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aes-ia64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aes-ia64.S",
                ],
            "crypto/aes/aes-mips.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aes-mips.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aes-parisc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aes-parisc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aes-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aes-ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aes-s390x.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aes-s390x.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aes-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aes-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aes-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aes-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aesfx-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aesfx-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aesni-mb-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aesni-mb-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aesni-sha1-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aesni-sha1-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aesni-sha256-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aesni-sha256-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aesni-x86.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aesni-x86.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/aes/aesni-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aesni-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aesp8-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aesp8-ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aest4-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aest4-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/aesv8-armx.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aesv8-armx.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/bsaes-armv7.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/bsaes-armv7.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/bsaes-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/bsaes-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/vpaes-armv8.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/vpaes-armv8.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/vpaes-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/vpaes-ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/aes/vpaes-x86.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/vpaes-x86.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/aes/vpaes-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/vpaes-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/alphacpuid.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/alphacpuid.pl",
                ],
            "crypto/arm64cpuid.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/arm64cpuid.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/armv4cpuid.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/armv4cpuid.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bf/bf-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bf/asm/bf-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/bn/alpha-mont.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/alpha-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/armv4-gf2m.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/armv4-gf2m.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/armv4-mont.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/armv4-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/armv8-mont.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/armv8-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/bn-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/bn-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/bn/bn-ia64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/ia64.S",
                ],
            "crypto/bn/bn-mips.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/mips.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/bn-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/co-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/co-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/bn/ia64-mont.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/ia64-mont.pl",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                ],
            "crypto/bn/mips-mont.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/mips-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/parisc-mont.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/parisc-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/ppc-mont.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/ppc-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/ppc64-mont.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/ppc64-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/rsaz-avx2.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/rsaz-avx2.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/rsaz-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/rsaz-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/s390x-gf2m.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/s390x-gf2m.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/s390x-mont.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/s390x-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/sparct4-mont.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/sparct4-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/sparcv9-gf2m.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/sparcv9-gf2m.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/sparcv9-mont.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/sparcv9-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/sparcv9a-mont.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/sparcv9a-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/vis3-mont.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/vis3-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/x86-gf2m.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/x86-gf2m.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/bn/x86-mont.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/x86-mont.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/bn/x86_64-gf2m.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/x86_64-gf2m.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/x86_64-mont.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/x86_64-mont.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/bn/x86_64-mont5.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/asm/x86_64-mont5.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/buildinf.h" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/util/mkbuildinf.pl",
                    "\"\$(CC)",
                    "\$(LIB_CFLAGS)",
                    "\$(CPPFLAGS_Q)\"",
                    "\"\$(PLATFORM)\"",
                ],
            "crypto/camellia/cmll-x86.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/camellia/asm/cmll-x86.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/camellia/cmll-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/camellia/asm/cmll-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/camellia/cmllt4-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/camellia/asm/cmllt4-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/cast/cast-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cast/asm/cast-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/chacha/chacha-armv4.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/chacha/asm/chacha-armv4.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/chacha/chacha-armv8.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/chacha/asm/chacha-armv8.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/chacha/chacha-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/chacha/asm/chacha-ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/chacha/chacha-s390x.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/chacha/asm/chacha-s390x.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/chacha/chacha-x86.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/chacha/asm/chacha-x86.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/chacha/chacha-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/chacha/asm/chacha-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/des/crypt586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/asm/crypt586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                ],
            "crypto/des/des-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/asm/des-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                ],
            "crypto/des/des_enc-sparc.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/asm/des_enc.m4",
                ],
            "crypto/des/dest4-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/asm/dest4-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/ec/ecp_nistz256-armv4.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/asm/ecp_nistz256-armv4.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/ec/ecp_nistz256-armv8.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/asm/ecp_nistz256-armv8.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/ec/ecp_nistz256-avx2.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/asm/ecp_nistz256-avx2.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/ec/ecp_nistz256-ppc64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/asm/ecp_nistz256-ppc64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/ec/ecp_nistz256-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/asm/ecp_nistz256-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/ec/ecp_nistz256-x86.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/asm/ecp_nistz256-x86.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/ec/ecp_nistz256-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/asm/ecp_nistz256-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/ec/x25519-ppc64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/asm/x25519-ppc64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/ec/x25519-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/asm/x25519-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/ia64cpuid.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ia64cpuid.S",
                ],
            "crypto/include/internal/bn_conf.h" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include/internal/bn_conf.h.in",
                ],
            "crypto/include/internal/dso_conf.h" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include/internal/dso_conf.h.in",
                ],
            "crypto/md5/md5-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/md5/asm/md5-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                ],
            "crypto/md5/md5-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/md5/asm/md5-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/md5/md5-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/md5/asm/md5-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/modes/aesni-gcm-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/aesni-gcm-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/modes/ghash-alpha.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/ghash-alpha.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/modes/ghash-armv4.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/ghash-armv4.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/modes/ghash-ia64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/ghash-ia64.pl",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                ],
            "crypto/modes/ghash-parisc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/ghash-parisc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/modes/ghash-s390x.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/ghash-s390x.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/modes/ghash-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/ghash-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/modes/ghash-x86.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/ghash-x86.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/modes/ghash-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/ghash-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/modes/ghashp8-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/ghashp8-ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/modes/ghashv8-armx.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/ghashv8-armx.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/pariscid.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pariscid.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/poly1305/poly1305-armv4.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/asm/poly1305-armv4.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/poly1305/poly1305-armv8.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/asm/poly1305-armv8.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/poly1305/poly1305-mips.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/asm/poly1305-mips.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/poly1305/poly1305-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/asm/poly1305-ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/poly1305/poly1305-ppcfp.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/asm/poly1305-ppcfp.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/poly1305/poly1305-s390x.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/asm/poly1305-s390x.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/poly1305/poly1305-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/asm/poly1305-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/poly1305/poly1305-x86.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/asm/poly1305-x86.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/poly1305/poly1305-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/asm/poly1305-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/ppccpuid.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ppccpuid.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/rc4/rc4-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc4/asm/rc4-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/rc4/rc4-md5-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc4/asm/rc4-md5-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/rc4/rc4-parisc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc4/asm/rc4-parisc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/rc4/rc4-s390x.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc4/asm/rc4-s390x.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/rc4/rc4-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc4/asm/rc4-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/ripemd/rmd-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ripemd/asm/rmd-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                ],
            "crypto/s390xcpuid.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/s390xcpuid.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/keccak1600-armv4.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/keccak1600-armv4.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/keccak1600-armv8.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/keccak1600-armv8.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/keccak1600-ppc64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/keccak1600-ppc64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/keccak1600-s390x.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/keccak1600-s390x.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/keccak1600-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/keccak1600-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha1-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/sha/sha1-alpha.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-alpha.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha1-armv4-large.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-armv4-large.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha1-armv8.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-armv8.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha1-ia64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-ia64.pl",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                ],
            "crypto/sha/sha1-mb-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-mb-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha1-mips.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-mips.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha1-parisc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-parisc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha1-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha1-s390x.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-s390x.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha1-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha1-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha256-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha256-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/sha/sha256-armv4.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha256-armv4.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha256-armv8.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-armv8.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha256-ia64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-ia64.pl",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                ],
            "crypto/sha/sha256-mb-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha256-mb-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha256-mips.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-mips.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha256-parisc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-parisc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha256-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha256-s390x.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-s390x.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha256-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha256-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha256p8-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512p8-ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha512-586.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-586.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/sha/sha512-armv4.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-armv4.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha512-armv8.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-armv8.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha512-ia64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-ia64.pl",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                ],
            "crypto/sha/sha512-mips.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-mips.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha512-parisc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-parisc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha512-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha512-s390x.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-s390x.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha512-sparcv9.S" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-sparcv9.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha512-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/sha/sha512p8-ppc.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512p8-ppc.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/uplink-ia64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ms/uplink-ia64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/uplink-x86.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ms/uplink-x86.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/uplink-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ms/uplink-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/whrlpool/wp-mmx.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/whrlpool/asm/wp-mmx.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "crypto/whrlpool/wp-x86_64.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/whrlpool/asm/wp-x86_64.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/x86_64cpuid.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x86_64cpuid.pl",
                    "\$(PERLASM_SCHEME)",
                ],
            "crypto/x86cpuid.s" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x86cpuid.pl",
                    "\$(PERLASM_SCHEME)",
                    "\$(LIB_CFLAGS)",
                    "\$(LIB_CPPFLAGS)",
                    "\$(PROCESSOR)",
                ],
            "include/openssl/opensslconf.h" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include/openssl/opensslconf.h.in",
                ],
            "test/buildtest_aes.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "aes",
                ],
            "test/buildtest_asn1.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "asn1",
                ],
            "test/buildtest_asn1t.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "asn1t",
                ],
            "test/buildtest_bio.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "bio",
                ],
            "test/buildtest_blowfish.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "blowfish",
                ],
            "test/buildtest_bn.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "bn",
                ],
            "test/buildtest_buffer.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "buffer",
                ],
            "test/buildtest_camellia.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "camellia",
                ],
            "test/buildtest_cast.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "cast",
                ],
            "test/buildtest_cmac.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "cmac",
                ],
            "test/buildtest_cms.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "cms",
                ],
            "test/buildtest_comp.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "comp",
                ],
            "test/buildtest_conf.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "conf",
                ],
            "test/buildtest_conf_api.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "conf_api",
                ],
            "test/buildtest_crypto.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "crypto",
                ],
            "test/buildtest_ct.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ct",
                ],
            "test/buildtest_des.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "des",
                ],
            "test/buildtest_dh.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "dh",
                ],
            "test/buildtest_dsa.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "dsa",
                ],
            "test/buildtest_dtls1.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "dtls1",
                ],
            "test/buildtest_e_os2.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "e_os2",
                ],
            "test/buildtest_ebcdic.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ebcdic",
                ],
            "test/buildtest_ec.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ec",
                ],
            "test/buildtest_ecdh.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ecdh",
                ],
            "test/buildtest_ecdsa.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ecdsa",
                ],
            "test/buildtest_evp.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "evp",
                ],
            "test/buildtest_hmac.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "hmac",
                ],
            "test/buildtest_idea.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "idea",
                ],
            "test/buildtest_kdf.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "kdf",
                ],
            "test/buildtest_lhash.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "lhash",
                ],
            "test/buildtest_md4.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "md4",
                ],
            "test/buildtest_md5.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "md5",
                ],
            "test/buildtest_mdc2.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "mdc2",
                ],
            "test/buildtest_modes.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "modes",
                ],
            "test/buildtest_obj_mac.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "obj_mac",
                ],
            "test/buildtest_objects.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "objects",
                ],
            "test/buildtest_ocsp.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ocsp",
                ],
            "test/buildtest_opensslv.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "opensslv",
                ],
            "test/buildtest_ossl_typ.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ossl_typ",
                ],
            "test/buildtest_pem.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "pem",
                ],
            "test/buildtest_pem2.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "pem2",
                ],
            "test/buildtest_pkcs12.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "pkcs12",
                ],
            "test/buildtest_pkcs7.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "pkcs7",
                ],
            "test/buildtest_rand.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "rand",
                ],
            "test/buildtest_rand_drbg.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "rand_drbg",
                ],
            "test/buildtest_rc2.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "rc2",
                ],
            "test/buildtest_rc4.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "rc4",
                ],
            "test/buildtest_ripemd.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ripemd",
                ],
            "test/buildtest_rsa.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "rsa",
                ],
            "test/buildtest_safestack.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "safestack",
                ],
            "test/buildtest_seed.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "seed",
                ],
            "test/buildtest_sha.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "sha",
                ],
            "test/buildtest_srp.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "srp",
                ],
            "test/buildtest_srtp.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "srtp",
                ],
            "test/buildtest_ssl.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ssl",
                ],
            "test/buildtest_ssl2.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ssl2",
                ],
            "test/buildtest_stack.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "stack",
                ],
            "test/buildtest_store.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "store",
                ],
            "test/buildtest_symhacks.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "symhacks",
                ],
            "test/buildtest_tls1.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "tls1",
                ],
            "test/buildtest_ts.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ts",
                ],
            "test/buildtest_txt_db.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "txt_db",
                ],
            "test/buildtest_ui.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "ui",
                ],
            "test/buildtest_whrlpool.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "whrlpool",
                ],
            "test/buildtest_x509.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "x509",
                ],
            "test/buildtest_x509_vfy.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "x509_vfy",
                ],
            "test/buildtest_x509v3.c" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/generate_buildtest.pl",
                    "x509v3",
                ],
        },
    "includes" =>
        {
            "apps/app_rand.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/apps.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/asn1pars.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/bf_prefix.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/ca.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/ciphers.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/cms.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/crl.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/crl2p7.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/dgst.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/dhparam.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/dsa.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/dsaparam.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/ec.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/ecparam.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/enc.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/engine.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/errstr.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/gendsa.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/genpkey.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/genrsa.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/nseq.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/ocsp.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/openssl.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/opt.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/passwd.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/pkcs12.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/pkcs7.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/pkcs8.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/pkey.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/pkeyparam.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/pkeyutl.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/prime.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/progs.h" =>
                [
                    ".",
                ],
            "apps/rand.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/rehash.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/req.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/rsa.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/rsautl.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/s_cb.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/s_client.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/s_server.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/s_socket.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/s_time.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/sess_id.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/smime.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/speed.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/spkac.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/srp.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/storeutl.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/ts.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/verify.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/version.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "apps/x509.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/aes/aes-armv4.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/aes/aes-mips.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/aes/aes-s390x.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/aes/aes-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/aes/aes_cbc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/aes/aes_cfb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/aes/aes_core.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/aes/aes_ecb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/aes/aes_ige.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/aes/aes_misc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/aes/aes_ofb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/aes/aes_wrap.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/aes/aesfx-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/aes/aest4-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/aes/aesv8-armx.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/aes/bsaes-armv7.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/aria/aria.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/arm64cpuid.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/armv4cpuid.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/asn1/a_bitstr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_d2i_fp.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_digest.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_dup.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_gentm.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_i2d_fp.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_int.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_mbstr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_object.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_octet.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_print.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_sign.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_strex.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_strnid.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_time.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_type.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_utctm.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_utf8.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/a_verify.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/ameth_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/asn1_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/asn1_gen.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/asn1_item_list.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/asn1_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/asn1_par.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/asn_mime.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/asn_moid.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/asn_mstbl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/asn_pack.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/bio_asn1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/bio_ndef.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/d2i_pr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/d2i_pu.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/evp_asn1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/f_int.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/f_string.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/i2d_pr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/i2d_pu.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/n_pkey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/nsseq.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/p5_pbe.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/p5_pbev2.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/p5_scrypt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/p8_pkey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/t_bitst.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/t_pkey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/t_spki.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/tasn_dec.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/tasn_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/tasn_fre.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/tasn_new.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/tasn_prn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/tasn_scn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/tasn_typ.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/tasn_utl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/x_algor.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/x_bignum.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/x_info.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/x_int64.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/x_long.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/x_pkey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/x_sig.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/x_spki.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/asn1/x_val.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/async/arch/async_null.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/async/arch/async_posix.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/async/arch/async_win.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/async/async.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/async/async_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/async/async_wait.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bf/bf_cfb64.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bf/bf_ecb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bf/bf_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bf/bf_ofb64.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bf/bf_skey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/b_addr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/b_dump.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/b_print.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/b_sock.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/b_sock2.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bf_buff.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bf_lbuf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bf_nbio.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bf_null.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bio_cb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bio_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bio_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bio_meth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bss_acpt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bss_bio.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bss_conn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bss_dgram.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bss_fd.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bss_file.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bss_log.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bss_mem.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bss_null.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bio/bss_sock.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/blake2/blake2b.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/blake2/blake2s.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/blake2/m_blake2b.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/blake2/m_blake2s.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/armv4-gf2m.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/bn/armv4-mont.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/bn/bn-mips.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/bn/bn_add.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_asm.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_blind.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_const.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_ctx.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_depr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_dh.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_div.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_exp.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/bn/bn_exp2.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_gcd.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_gf2m.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_intern.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_kron.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_mod.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_mont.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_mpi.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_mul.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_nist.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_prime.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_print.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_rand.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_recp.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_shift.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_sqr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_sqrt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_srp.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_word.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/bn_x931p.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/bn/mips-mont.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/bn/sparct4-mont.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/bn/sparcv9-gf2m.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/bn/sparcv9-mont.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/bn/sparcv9a-mont.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/bn/vis3-mont.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/buffer/buf_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/buffer/buffer.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/buildinf.h" =>
                [
                    ".",
                ],
            "crypto/camellia/camellia.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/camellia/cmll_cbc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/camellia/cmll_cfb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/camellia/cmll_ctr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/camellia/cmll_ecb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/camellia/cmll_misc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/camellia/cmll_ofb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/camellia/cmllt4-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/cast/c_cfb64.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cast/c_ecb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cast/c_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cast/c_ofb64.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cast/c_skey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/chacha/chacha-armv4.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/chacha/chacha-armv8.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/chacha/chacha-s390x.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/chacha/chacha_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cmac/cm_ameth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cmac/cm_pmeth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cmac/cmac.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_asn1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_att.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_cd.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_dd.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_env.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_ess.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_io.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_kari.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_pwri.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_sd.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cms/cms_smime.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/comp/c_zlib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/comp/comp_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/comp/comp_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/conf/conf_api.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/conf/conf_def.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/conf/conf_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/conf/conf_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/conf/conf_mall.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/conf/conf_mod.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/conf/conf_sap.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/conf/conf_ssl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cpt_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cryptlib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ct/ct_b64.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ct/ct_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ct/ct_log.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ct/ct_oct.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ct/ct_policy.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ct/ct_prn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ct/ct_sct.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ct/ct_sct_ctx.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ct/ct_vfy.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ct/ct_x509v3.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ctype.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/cversion.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/cbc_cksm.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/cbc_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/cfb64ede.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/cfb64enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/cfb_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/des_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/dest4-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/des/ecb3_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/ecb_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/fcrypt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/fcrypt_b.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/ofb64ede.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/ofb64enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/ofb_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/pcbc_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/qud_cksm.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/rand_key.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/set_key.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/str2key.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/des/xcbc_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_ameth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_asn1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_check.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_depr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_gen.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_kdf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_key.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_meth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_pmeth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_prn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_rfc5114.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dh/dh_rfc7919.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_ameth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_asn1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_depr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_gen.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_key.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_meth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_ossl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_pmeth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_prn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_sign.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dsa/dsa_vrf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dso/dso_dl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dso/dso_dlfcn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dso/dso_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dso/dso_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dso/dso_openssl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dso/dso_vms.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/dso/dso_win32.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ebcdic.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/curve25519.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/curve448/arch_32/f_impl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto/ec/curve448/arch_32",
                    "crypto/ec/curve448",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/arch_32",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448",
                ],
            "crypto/ec/curve448/curve448.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto/ec/curve448/arch_32",
                    "crypto/ec/curve448",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/arch_32",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448",
                ],
            "crypto/ec/curve448/curve448_tables.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto/ec/curve448/arch_32",
                    "crypto/ec/curve448",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/arch_32",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448",
                ],
            "crypto/ec/curve448/eddsa.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto/ec/curve448/arch_32",
                    "crypto/ec/curve448",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/arch_32",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448",
                ],
            "crypto/ec/curve448/f_generic.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto/ec/curve448/arch_32",
                    "crypto/ec/curve448",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/arch_32",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448",
                ],
            "crypto/ec/curve448/scalar.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto/ec/curve448/arch_32",
                    "crypto/ec/curve448",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/arch_32",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448",
                ],
            "crypto/ec/ec2_oct.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec2_smpl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_ameth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_asn1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_check.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_curve.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_cvt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_key.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_kmeth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_mult.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_oct.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_pmeth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ec_print.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecdh_kdf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecdh_ossl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecdsa_ossl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecdsa_sign.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecdsa_vrf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/eck_prn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecp_mont.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecp_nist.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecp_nistp224.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecp_nistp256.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecp_nistp521.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecp_nistputil.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecp_nistz256-armv4.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/ec/ecp_nistz256-armv8.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/ec/ecp_nistz256-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/ec/ecp_oct.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecp_smpl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ec/ecx_meth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/err/err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/err/err_all.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/err/err_prn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/bio_b64.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/bio_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/bio_md.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/bio_ok.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/c_allc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/c_alld.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/cmeth_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/digest.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_aes.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto",
                    "crypto/modes",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes",
                ],
            "crypto/evp/e_aes_cbc_hmac_sha1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto/modes",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes",
                ],
            "crypto/evp/e_aes_cbc_hmac_sha256.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto/modes",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes",
                ],
            "crypto/evp/e_aria.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto",
                    "crypto/modes",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes",
                ],
            "crypto/evp/e_bf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_camellia.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto",
                    "crypto/modes",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes",
                ],
            "crypto/evp/e_cast.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_chacha20_poly1305.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_des.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/evp/e_des3.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/evp/e_idea.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_null.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_old.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_rc2.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_rc4.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_rc4_hmac_md5.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_rc5.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_seed.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/e_sm4.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto",
                    "crypto/modes",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes",
                ],
            "crypto/evp/e_xcbc_d.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/encode.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/evp_cnf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/evp_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/evp_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/evp_key.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/evp_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/evp_pbe.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/evp_pkey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/m_md2.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/m_md4.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/m_md5.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/m_md5_sha1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/m_mdc2.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/m_null.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/m_ripemd.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/m_sha1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/m_sha3.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/evp/m_sigver.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/m_wp.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/names.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/p5_crpt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/p5_crpt2.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/p_dec.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/p_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/p_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/p_open.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/p_seal.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/p_sign.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/p_verify.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/pbe_scrypt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/pmeth_fn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/pmeth_gn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/evp/pmeth_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ex_data.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/getenv.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/hmac/hm_ameth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/hmac/hm_pmeth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/hmac/hmac.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/idea/i_cbc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/idea/i_cfb64.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/idea/i_ecb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/idea/i_ofb64.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/idea/i_skey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/include/internal/bn_conf.h" =>
                [
                    ".",
                ],
            "crypto/include/internal/dso_conf.h" =>
                [
                    ".",
                ],
            "crypto/init.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/kdf/hkdf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/kdf/kdf_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/kdf/scrypt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/kdf/tls1_prf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/lhash/lh_stats.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/lhash/lhash.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/md4/md4_dgst.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/md4/md4_one.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/md5/md5-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/md5/md5_dgst.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/md5/md5_one.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/mdc2/mdc2_one.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/mdc2/mdc2dgst.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/mem.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/mem_clr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/mem_dbg.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/mem_sec.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/modes/cbc128.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/modes/ccm128.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/modes/cfb128.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/modes/ctr128.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/modes/cts128.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/modes/gcm128.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/modes/ghash-armv4.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/modes/ghash-s390x.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/modes/ghash-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/modes/ghashv8-armx.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/modes/ocb128.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/modes/ofb128.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/modes/wrap128.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/modes/xts128.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/o_dir.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/o_fips.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/o_fopen.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/o_init.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/o_str.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/o_time.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/objects/o_names.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/objects/obj_dat.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/objects/obj_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/objects/obj_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/objects/obj_xref.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ocsp/ocsp_asn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ocsp/ocsp_cl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ocsp/ocsp_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ocsp/ocsp_ext.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ocsp/ocsp_ht.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ocsp/ocsp_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ocsp/ocsp_prn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ocsp/ocsp_srv.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ocsp/ocsp_vfy.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ocsp/v3_ocsp.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pem/pem_all.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pem/pem_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pem/pem_info.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pem/pem_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pem/pem_oth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pem/pem_pk8.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pem/pem_pkey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pem/pem_sign.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pem/pem_x509.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pem/pem_xaux.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pem/pvkfmt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_add.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_asn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_attr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_crpt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_crt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_decr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_init.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_key.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_kiss.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_mutl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_npas.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_p8d.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_p8e.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_sbag.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/p12_utl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs12/pk12err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs7/bio_pk7.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs7/pk7_asn1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs7/pk7_attr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs7/pk7_doit.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs7/pk7_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs7/pk7_mime.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs7/pk7_smime.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/pkcs7/pkcs7err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/poly1305/poly1305-armv4.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/poly1305/poly1305-armv8.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/poly1305/poly1305-mips.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/poly1305/poly1305-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/poly1305/poly1305.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/poly1305/poly1305_ameth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/poly1305/poly1305_pmeth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rand/drbg_ctr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rand/drbg_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rand/rand_egd.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rand/rand_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rand/rand_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rand/rand_unix.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rand/rand_vms.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rand/rand_win.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rand/randfile.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rc2/rc2_cbc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rc2/rc2_ecb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rc2/rc2_skey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rc2/rc2cfb64.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rc2/rc2ofb64.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rc4/rc4_enc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rc4/rc4_skey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ripemd/rmd_dgst.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ripemd/rmd_one.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_ameth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_asn1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_chk.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_crpt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_depr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_gen.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_meth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_mp.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_none.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_oaep.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_ossl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_pk1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_pmeth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_prn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_pss.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_saos.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_sign.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_ssl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_x931.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/rsa/rsa_x931g.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/s390xcpuid.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/seed/seed.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/seed/seed_cbc.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/seed/seed_cfb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/seed/seed_ecb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/seed/seed_ofb.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sha/keccak1600-armv4.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/keccak1600.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sha/sha1-armv4-large.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha1-armv8.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha1-mips.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha1-s390x.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha1-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha1_one.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sha/sha1dgst.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sha/sha256-armv4.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha256-armv8.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha256-mips.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha256-s390x.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha256-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha256.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sha/sha512-armv4.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha512-armv8.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha512-mips.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha512-s390x.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha512-sparcv9.o" =>
                [
                    "crypto",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto",
                ],
            "crypto/sha/sha512.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/siphash/siphash.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/siphash/siphash_ameth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/siphash/siphash_pmeth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sm2/sm2_crypt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sm2/sm2_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sm2/sm2_pmeth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sm2/sm2_sign.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sm3/m_sm3.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sm3/sm3.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/sm4/sm4.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/srp/srp_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/srp/srp_vfy.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/stack/stack.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/store/loader_file.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/store/store_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/store/store_init.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/store/store_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/store/store_register.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/store/store_strings.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/threads_none.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/threads_pthread.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/threads_win.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ts/ts_asn1.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ts/ts_conf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ts/ts_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ts/ts_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ts/ts_req_print.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ts/ts_req_utils.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ts/ts_rsp_print.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ts/ts_rsp_sign.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ts/ts_rsp_utils.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ts/ts_rsp_verify.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ts/ts_verify_ctx.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/txt_db/txt_db.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ui/ui_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ui/ui_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ui/ui_null.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ui/ui_openssl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/ui/ui_util.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/uid.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/whrlpool/wp_block.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/whrlpool/wp_dgst.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/by_dir.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/by_file.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/t_crl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/t_req.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/t_x509.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_att.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_cmp.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_d2.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_def.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_ext.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_lu.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_meth.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_obj.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_r2x.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_req.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_set.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_trs.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_txt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_v3.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_vfy.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509_vpm.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509cset.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509name.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509rset.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509spki.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x509type.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x_all.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x_attrib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x_crl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x_exten.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x_name.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x_pubkey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x_req.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x_x509.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509/x_x509a.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/pcy_cache.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/pcy_data.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/pcy_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/pcy_map.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/pcy_node.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/pcy_tree.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_addr.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_admis.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_akey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_akeya.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_alt.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_asid.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_bcons.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_bitst.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_conf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_cpols.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_crld.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_enum.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_extku.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_genn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_ia5.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_info.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_int.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_lib.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_ncons.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_pci.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_pcia.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_pcons.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_pku.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_pmaps.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_prn.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_purp.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_skey.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_sxnet.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_tlsf.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3_utl.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "crypto/x509v3/v3err.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/asn1.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/asn1parse.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/bignum.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/bndiv.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/client.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/cms.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/conf.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/crl.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/ct.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/server.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/test-corpus.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "fuzz/x509.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "include/openssl/opensslconf.h" =>
                [
                    ".",
                ],
            "ssl/bio_ssl.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/d1_lib.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/d1_msg.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/d1_srtp.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/methods.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/packet.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/pqueue.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/record/dtls1_bitmap.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/record/rec_layer_d1.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/record/rec_layer_s3.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/record/ssl3_buffer.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/record/ssl3_record.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/record/ssl3_record_tls13.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/s3_cbc.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/s3_enc.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/s3_lib.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/s3_msg.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_asn1.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_cert.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_ciph.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_conf.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_err.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_init.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_lib.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_mcnf.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_rsa.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_sess.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_stat.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_txt.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/ssl_utst.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/statem/extensions.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/statem/extensions_clnt.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/statem/extensions_cust.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/statem/extensions_srvr.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/statem/statem.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/statem/statem_clnt.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/statem/statem_dtls.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/statem/statem_lib.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/statem/statem_srvr.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/t1_enc.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/t1_lib.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/t1_trce.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/tls13_enc.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "ssl/tls_srp.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/aborttest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/afalgtest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/asn1_decode_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/asn1_encode_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/asn1_internal_test.o" =>
                [
                    ".",
                    "include",
                    "crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                ],
            "test/asn1_string_table_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/asn1_time_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/asynciotest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/asynctest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/bad_dtls_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/bftest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/bio_callback_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/bio_enc_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/bio_memleak_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/bioprinttest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/bntest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_aes.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_asn1.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_asn1t.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_bio.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_blowfish.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_bn.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_buffer.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_camellia.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_cast.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_cmac.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_cms.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_comp.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_conf.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_conf_api.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_crypto.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ct.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_des.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_dh.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_dsa.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_dtls1.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_e_os2.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ebcdic.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ec.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ecdh.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ecdsa.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_evp.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_hmac.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_idea.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_kdf.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_lhash.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_md4.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_md5.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_mdc2.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_modes.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_obj_mac.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_objects.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ocsp.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_opensslv.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ossl_typ.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_pem.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_pem2.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_pkcs12.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_pkcs7.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_rand.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_rand_drbg.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_rc2.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_rc4.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ripemd.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_rsa.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_safestack.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_seed.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_sha.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_srp.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_srtp.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ssl.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ssl2.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_stack.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_store.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_symhacks.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_tls1.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ts.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_txt_db.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_ui.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_whrlpool.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_x509.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_x509_vfy.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/buildtest_x509v3.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/casttest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/chacha_internal_test.o" =>
                [
                    ".",
                    "include",
                    "crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                ],
            "test/cipherbytes_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/cipherlist_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ciphername_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/clienthellotest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/cmsapitest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/conf_include_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/constant_time_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/crltest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ct_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ctype_internal_test.o" =>
                [
                    ".",
                    "crypto/include",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/curve448_internal_test.o" =>
                [
                    ".",
                    "include",
                    "crypto/ec/curve448",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448",
                ],
            "test/d2i_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/danetest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/destest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/dhtest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/drbg_cavs_data.o" =>
                [
                    "include",
                    "test",
                    ".",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                ],
            "test/drbg_cavs_test.o" =>
                [
                    "include",
                    "test",
                    ".",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                ],
            "test/drbgtest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/dsa_no_digest_size_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/dsatest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/dtls_mtu_test.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/dtlstest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/dtlsv1listentest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ec_internal_test.o" =>
                [
                    "include",
                    "crypto/ec",
                    "crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                ],
            "test/ecdsatest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ecstresstest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ectest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/enginetest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/errtest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/evp_extra_test.o" =>
                [
                    "include",
                    "crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                ],
            "test/evp_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/exdatatest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/exptest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/fatalerrtest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/gmdifftest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/gosttest.o" =>
                [
                    "include",
                    ".",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                ],
            "test/handshake_helper.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/hmactest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ideatest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/igetest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/lhash_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/md2test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/mdc2_internal_test.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/mdc2test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/memleaktest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/modes_internal_test.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ocspapitest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/packettest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/pbelutest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/pemtest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/pkey_meth_kdf_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/pkey_meth_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/poly1305_internal_test.o" =>
                [
                    ".",
                    "include",
                    "crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                ],
            "test/rc2test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/rc4test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/rc5test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/rdrand_sanitytest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/recordlentest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/rsa_complex.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/rsa_mp_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/rsa_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/sanitytest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/secmemtest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/servername_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/shlibloadtest.o" =>
                [
                    "include",
                    "crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                ],
            "test/siphash_internal_test.o" =>
                [
                    ".",
                    "include",
                    "crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                ],
            "test/sm2_internal_test.o" =>
                [
                    "include",
                    "crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                ],
            "test/sm4_internal_test.o" =>
                [
                    ".",
                    "include",
                    "crypto/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/include",
                ],
            "test/srptest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ssl_cert_table_internal_test.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ssl_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ssl_test_ctx.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ssl_test_ctx_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/sslapitest.o" =>
                [
                    "include",
                    ".",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                ],
            "test/sslbuffertest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/sslcorrupttest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ssltest_old.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/ssltestlib.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/stack_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/sysdefaulttest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/test_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/testutil/basic_output.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/testutil/cb.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/testutil/driver.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/testutil/format_output.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/testutil/init.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/testutil/main.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/testutil/output_helpers.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/testutil/stanza.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/testutil/tap_bio.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/testutil/test_cleanup.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/testutil/tests.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/threadstest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/time_offset_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/tls13ccstest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/tls13encryptiontest.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/tls13secretstest.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/uitest.o" =>
                [
                    ".",
                    "include",
                    "apps",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps",
                ],
            "test/v3ext.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/v3nametest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/verify_extra_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/versions.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/wpackettest.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/x509_check_cert_pkey_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/x509_dup_cert_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/x509_internal_test.o" =>
                [
                    ".",
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/x509_time_test.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
            "test/x509aux.o" =>
                [
                    "include",
                    "../../../../../../../ThirdParty/openssl-1.1.1c/include",
                ],
        },
    "install" =>
        {
            "libraries" =>
                [
                    "libcrypto",
                    "libssl",
                ],
            "programs" =>
                [
                    "apps/openssl",
                ],
            "scripts" =>
                [
                    "apps/CA.pl",
                    "apps/tsget.pl",
                    "tools/c_rehash",
                ],
        },
    "ldadd" =>
        {
        },
    "libraries" =>
        [
            "apps/libapps.a",
            "libcrypto",
            "libssl",
            "test/libtestutil.a",
        ],
    "overrides" =>
        [
        ],
    "programs" =>
        [
            "apps/openssl",
            "fuzz/asn1-test",
            "fuzz/asn1parse-test",
            "fuzz/bignum-test",
            "fuzz/bndiv-test",
            "fuzz/client-test",
            "fuzz/cms-test",
            "fuzz/conf-test",
            "fuzz/crl-test",
            "fuzz/ct-test",
            "fuzz/server-test",
            "fuzz/x509-test",
            "test/aborttest",
            "test/afalgtest",
            "test/asn1_decode_test",
            "test/asn1_encode_test",
            "test/asn1_internal_test",
            "test/asn1_string_table_test",
            "test/asn1_time_test",
            "test/asynciotest",
            "test/asynctest",
            "test/bad_dtls_test",
            "test/bftest",
            "test/bio_callback_test",
            "test/bio_enc_test",
            "test/bio_memleak_test",
            "test/bioprinttest",
            "test/bntest",
            "test/buildtest_c_aes",
            "test/buildtest_c_asn1",
            "test/buildtest_c_asn1t",
            "test/buildtest_c_bio",
            "test/buildtest_c_blowfish",
            "test/buildtest_c_bn",
            "test/buildtest_c_buffer",
            "test/buildtest_c_camellia",
            "test/buildtest_c_cast",
            "test/buildtest_c_cmac",
            "test/buildtest_c_cms",
            "test/buildtest_c_comp",
            "test/buildtest_c_conf",
            "test/buildtest_c_conf_api",
            "test/buildtest_c_crypto",
            "test/buildtest_c_ct",
            "test/buildtest_c_des",
            "test/buildtest_c_dh",
            "test/buildtest_c_dsa",
            "test/buildtest_c_dtls1",
            "test/buildtest_c_e_os2",
            "test/buildtest_c_ebcdic",
            "test/buildtest_c_ec",
            "test/buildtest_c_ecdh",
            "test/buildtest_c_ecdsa",
            "test/buildtest_c_evp",
            "test/buildtest_c_hmac",
            "test/buildtest_c_idea",
            "test/buildtest_c_kdf",
            "test/buildtest_c_lhash",
            "test/buildtest_c_md4",
            "test/buildtest_c_md5",
            "test/buildtest_c_mdc2",
            "test/buildtest_c_modes",
            "test/buildtest_c_obj_mac",
            "test/buildtest_c_objects",
            "test/buildtest_c_ocsp",
            "test/buildtest_c_opensslv",
            "test/buildtest_c_ossl_typ",
            "test/buildtest_c_pem",
            "test/buildtest_c_pem2",
            "test/buildtest_c_pkcs12",
            "test/buildtest_c_pkcs7",
            "test/buildtest_c_rand",
            "test/buildtest_c_rand_drbg",
            "test/buildtest_c_rc2",
            "test/buildtest_c_rc4",
            "test/buildtest_c_ripemd",
            "test/buildtest_c_rsa",
            "test/buildtest_c_safestack",
            "test/buildtest_c_seed",
            "test/buildtest_c_sha",
            "test/buildtest_c_srp",
            "test/buildtest_c_srtp",
            "test/buildtest_c_ssl",
            "test/buildtest_c_ssl2",
            "test/buildtest_c_stack",
            "test/buildtest_c_store",
            "test/buildtest_c_symhacks",
            "test/buildtest_c_tls1",
            "test/buildtest_c_ts",
            "test/buildtest_c_txt_db",
            "test/buildtest_c_ui",
            "test/buildtest_c_whrlpool",
            "test/buildtest_c_x509",
            "test/buildtest_c_x509_vfy",
            "test/buildtest_c_x509v3",
            "test/casttest",
            "test/chacha_internal_test",
            "test/cipherbytes_test",
            "test/cipherlist_test",
            "test/ciphername_test",
            "test/clienthellotest",
            "test/cmsapitest",
            "test/conf_include_test",
            "test/constant_time_test",
            "test/crltest",
            "test/ct_test",
            "test/ctype_internal_test",
            "test/curve448_internal_test",
            "test/d2i_test",
            "test/danetest",
            "test/destest",
            "test/dhtest",
            "test/drbg_cavs_test",
            "test/drbgtest",
            "test/dsa_no_digest_size_test",
            "test/dsatest",
            "test/dtls_mtu_test",
            "test/dtlstest",
            "test/dtlsv1listentest",
            "test/ec_internal_test",
            "test/ecdsatest",
            "test/ecstresstest",
            "test/ectest",
            "test/enginetest",
            "test/errtest",
            "test/evp_extra_test",
            "test/evp_test",
            "test/exdatatest",
            "test/exptest",
            "test/fatalerrtest",
            "test/gmdifftest",
            "test/gosttest",
            "test/hmactest",
            "test/ideatest",
            "test/igetest",
            "test/lhash_test",
            "test/md2test",
            "test/mdc2_internal_test",
            "test/mdc2test",
            "test/memleaktest",
            "test/modes_internal_test",
            "test/ocspapitest",
            "test/packettest",
            "test/pbelutest",
            "test/pemtest",
            "test/pkey_meth_kdf_test",
            "test/pkey_meth_test",
            "test/poly1305_internal_test",
            "test/rc2test",
            "test/rc4test",
            "test/rc5test",
            "test/rdrand_sanitytest",
            "test/recordlentest",
            "test/rsa_complex",
            "test/rsa_mp_test",
            "test/rsa_test",
            "test/sanitytest",
            "test/secmemtest",
            "test/servername_test",
            "test/shlibloadtest",
            "test/siphash_internal_test",
            "test/sm2_internal_test",
            "test/sm4_internal_test",
            "test/srptest",
            "test/ssl_cert_table_internal_test",
            "test/ssl_test",
            "test/ssl_test_ctx_test",
            "test/sslapitest",
            "test/sslbuffertest",
            "test/sslcorrupttest",
            "test/ssltest_old",
            "test/stack_test",
            "test/sysdefaulttest",
            "test/test_test",
            "test/threadstest",
            "test/time_offset_test",
            "test/tls13ccstest",
            "test/tls13encryptiontest",
            "test/tls13secretstest",
            "test/uitest",
            "test/v3ext",
            "test/v3nametest",
            "test/verify_extra_test",
            "test/versions",
            "test/wpackettest",
            "test/x509_check_cert_pkey_test",
            "test/x509_dup_cert_test",
            "test/x509_internal_test",
            "test/x509_time_test",
            "test/x509aux",
        ],
    "rawlines" =>
        [
            "##### SHA assembler implementations",
            "",
            "# GNU make \"catch all\"",
            "crypto/sha/sha1-%.S:	../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha1-%.pl",
            "	CC=\"\$(CC)\" \$(PERL) \$< \$(PERLASM_SCHEME) \$\@",
            "crypto/sha/sha256-%.S:	../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-%.pl",
            "	CC=\"\$(CC)\" \$(PERL) \$< \$(PERLASM_SCHEME) \$\@",
            "crypto/sha/sha512-%.S:	../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/asm/sha512-%.pl",
            "	CC=\"\$(CC)\" \$(PERL) \$< \$(PERLASM_SCHEME) \$\@",
            "crypto/poly1305/poly1305-%.S:	../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/asm/poly1305-%.pl",
            "	CC=\"\$(CC)\" \$(PERL) \$< \$(PERLASM_SCHEME) \$\@",
            "##### AES assembler implementations",
            "",
            "# GNU make \"catch all\"",
            "crypto/aes/aes-%.S:	../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/aes-%.pl",
            "	CC=\"\$(CC)\" \$(PERL) \$< \$(PERLASM_SCHEME) \$\@",
            "crypto/aes/bsaes-%.S:	../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/asm/bsaes-%.pl",
            "	CC=\"\$(CC)\" \$(PERL) \$< \$(PERLASM_SCHEME) \$\@",
            "",
            "# GNU make \"catch all\"",
            "crypto/rc4/rc4-%.s:	../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc4/asm/rc4-%.pl",
            "	CC=\"\$(CC)\" \$(PERL) \$< \$(PERLASM_SCHEME) \$\@",
            "##### CHACHA assembler implementations",
            "",
            "crypto/chacha/chacha-%.S:	../../../../../../../ThirdParty/openssl-1.1.1c/crypto/chacha/asm/chacha-%.pl",
            "	CC=\"\$(CC)\" \$(PERL) \$< \$(PERLASM_SCHEME) \$\@",
            "# GNU make \"catch all\"",
            "crypto/modes/ghash-%.S:	../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/asm/ghash-%.pl",
            "	CC=\"\$(CC)\" \$(PERL) \$< \$(PERLASM_SCHEME) \$\@",
            "crypto/ec/ecp_nistz256-%.S:	../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/asm/ecp_nistz256-%.pl",
            "	CC=\"\$(CC)\" \$(PERL) \$< \$(PERLASM_SCHEME) \$\@",
        ],
    "rename" =>
        {
        },
    "scripts" =>
        [
            "apps/CA.pl",
            "apps/tsget.pl",
            "tools/c_rehash",
            "util/shlib_wrap.sh",
        ],
    "shared_sources" =>
        {
        },
    "sharednames" =>
        {
            "libcrypto" => "libcrypto",
            "libssl" => "libssl",
        },
    "sources" =>
        {
            "apps/CA.pl" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/CA.pl.in",
                ],
            "apps/app_rand.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/app_rand.c",
                ],
            "apps/apps.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/apps.c",
                ],
            "apps/asn1pars.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/asn1pars.c",
                ],
            "apps/bf_prefix.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/bf_prefix.c",
                ],
            "apps/ca.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/ca.c",
                ],
            "apps/ciphers.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/ciphers.c",
                ],
            "apps/cms.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/cms.c",
                ],
            "apps/crl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/crl.c",
                ],
            "apps/crl2p7.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/crl2p7.c",
                ],
            "apps/dgst.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/dgst.c",
                ],
            "apps/dhparam.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/dhparam.c",
                ],
            "apps/dsa.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/dsa.c",
                ],
            "apps/dsaparam.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/dsaparam.c",
                ],
            "apps/ec.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/ec.c",
                ],
            "apps/ecparam.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/ecparam.c",
                ],
            "apps/enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/enc.c",
                ],
            "apps/engine.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/engine.c",
                ],
            "apps/errstr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/errstr.c",
                ],
            "apps/gendsa.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/gendsa.c",
                ],
            "apps/genpkey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/genpkey.c",
                ],
            "apps/genrsa.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/genrsa.c",
                ],
            "apps/libapps.a" =>
                [
                    "apps/app_rand.o",
                    "apps/apps.o",
                    "apps/bf_prefix.o",
                    "apps/opt.o",
                    "apps/s_cb.o",
                    "apps/s_socket.o",
                ],
            "apps/nseq.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/nseq.c",
                ],
            "apps/ocsp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/ocsp.c",
                ],
            "apps/openssl" =>
                [
                    "apps/asn1pars.o",
                    "apps/ca.o",
                    "apps/ciphers.o",
                    "apps/cms.o",
                    "apps/crl.o",
                    "apps/crl2p7.o",
                    "apps/dgst.o",
                    "apps/dhparam.o",
                    "apps/dsa.o",
                    "apps/dsaparam.o",
                    "apps/ec.o",
                    "apps/ecparam.o",
                    "apps/enc.o",
                    "apps/engine.o",
                    "apps/errstr.o",
                    "apps/gendsa.o",
                    "apps/genpkey.o",
                    "apps/genrsa.o",
                    "apps/nseq.o",
                    "apps/ocsp.o",
                    "apps/openssl.o",
                    "apps/passwd.o",
                    "apps/pkcs12.o",
                    "apps/pkcs7.o",
                    "apps/pkcs8.o",
                    "apps/pkey.o",
                    "apps/pkeyparam.o",
                    "apps/pkeyutl.o",
                    "apps/prime.o",
                    "apps/rand.o",
                    "apps/rehash.o",
                    "apps/req.o",
                    "apps/rsa.o",
                    "apps/rsautl.o",
                    "apps/s_client.o",
                    "apps/s_server.o",
                    "apps/s_time.o",
                    "apps/sess_id.o",
                    "apps/smime.o",
                    "apps/speed.o",
                    "apps/spkac.o",
                    "apps/srp.o",
                    "apps/storeutl.o",
                    "apps/ts.o",
                    "apps/verify.o",
                    "apps/version.o",
                    "apps/x509.o",
                ],
            "apps/openssl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/openssl.c",
                ],
            "apps/opt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/opt.c",
                ],
            "apps/passwd.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/passwd.c",
                ],
            "apps/pkcs12.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/pkcs12.c",
                ],
            "apps/pkcs7.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/pkcs7.c",
                ],
            "apps/pkcs8.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/pkcs8.c",
                ],
            "apps/pkey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/pkey.c",
                ],
            "apps/pkeyparam.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/pkeyparam.c",
                ],
            "apps/pkeyutl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/pkeyutl.c",
                ],
            "apps/prime.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/prime.c",
                ],
            "apps/rand.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/rand.c",
                ],
            "apps/rehash.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/rehash.c",
                ],
            "apps/req.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/req.c",
                ],
            "apps/rsa.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/rsa.c",
                ],
            "apps/rsautl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/rsautl.c",
                ],
            "apps/s_cb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/s_cb.c",
                ],
            "apps/s_client.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/s_client.c",
                ],
            "apps/s_server.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/s_server.c",
                ],
            "apps/s_socket.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/s_socket.c",
                ],
            "apps/s_time.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/s_time.c",
                ],
            "apps/sess_id.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/sess_id.c",
                ],
            "apps/smime.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/smime.c",
                ],
            "apps/speed.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/speed.c",
                ],
            "apps/spkac.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/spkac.c",
                ],
            "apps/srp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/srp.c",
                ],
            "apps/storeutl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/storeutl.c",
                ],
            "apps/ts.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/ts.c",
                ],
            "apps/tsget.pl" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/tsget.in",
                ],
            "apps/verify.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/verify.c",
                ],
            "apps/version.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/version.c",
                ],
            "apps/x509.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/apps/x509.c",
                ],
            "crypto/aes/aes_cbc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/aes_cbc.c",
                ],
            "crypto/aes/aes_cfb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/aes_cfb.c",
                ],
            "crypto/aes/aes_core.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/aes_core.c",
                ],
            "crypto/aes/aes_ecb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/aes_ecb.c",
                ],
            "crypto/aes/aes_ige.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/aes_ige.c",
                ],
            "crypto/aes/aes_misc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/aes_misc.c",
                ],
            "crypto/aes/aes_ofb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/aes_ofb.c",
                ],
            "crypto/aes/aes_wrap.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aes/aes_wrap.c",
                ],
            "crypto/aria/aria.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/aria/aria.c",
                ],
            "crypto/asn1/a_bitstr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_bitstr.c",
                ],
            "crypto/asn1/a_d2i_fp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_d2i_fp.c",
                ],
            "crypto/asn1/a_digest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_digest.c",
                ],
            "crypto/asn1/a_dup.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_dup.c",
                ],
            "crypto/asn1/a_gentm.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_gentm.c",
                ],
            "crypto/asn1/a_i2d_fp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_i2d_fp.c",
                ],
            "crypto/asn1/a_int.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_int.c",
                ],
            "crypto/asn1/a_mbstr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_mbstr.c",
                ],
            "crypto/asn1/a_object.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_object.c",
                ],
            "crypto/asn1/a_octet.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_octet.c",
                ],
            "crypto/asn1/a_print.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_print.c",
                ],
            "crypto/asn1/a_sign.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_sign.c",
                ],
            "crypto/asn1/a_strex.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_strex.c",
                ],
            "crypto/asn1/a_strnid.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_strnid.c",
                ],
            "crypto/asn1/a_time.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_time.c",
                ],
            "crypto/asn1/a_type.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_type.c",
                ],
            "crypto/asn1/a_utctm.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_utctm.c",
                ],
            "crypto/asn1/a_utf8.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_utf8.c",
                ],
            "crypto/asn1/a_verify.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/a_verify.c",
                ],
            "crypto/asn1/ameth_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/ameth_lib.c",
                ],
            "crypto/asn1/asn1_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/asn1_err.c",
                ],
            "crypto/asn1/asn1_gen.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/asn1_gen.c",
                ],
            "crypto/asn1/asn1_item_list.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/asn1_item_list.c",
                ],
            "crypto/asn1/asn1_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/asn1_lib.c",
                ],
            "crypto/asn1/asn1_par.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/asn1_par.c",
                ],
            "crypto/asn1/asn_mime.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/asn_mime.c",
                ],
            "crypto/asn1/asn_moid.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/asn_moid.c",
                ],
            "crypto/asn1/asn_mstbl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/asn_mstbl.c",
                ],
            "crypto/asn1/asn_pack.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/asn_pack.c",
                ],
            "crypto/asn1/bio_asn1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/bio_asn1.c",
                ],
            "crypto/asn1/bio_ndef.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/bio_ndef.c",
                ],
            "crypto/asn1/d2i_pr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/d2i_pr.c",
                ],
            "crypto/asn1/d2i_pu.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/d2i_pu.c",
                ],
            "crypto/asn1/evp_asn1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/evp_asn1.c",
                ],
            "crypto/asn1/f_int.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/f_int.c",
                ],
            "crypto/asn1/f_string.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/f_string.c",
                ],
            "crypto/asn1/i2d_pr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/i2d_pr.c",
                ],
            "crypto/asn1/i2d_pu.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/i2d_pu.c",
                ],
            "crypto/asn1/n_pkey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/n_pkey.c",
                ],
            "crypto/asn1/nsseq.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/nsseq.c",
                ],
            "crypto/asn1/p5_pbe.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/p5_pbe.c",
                ],
            "crypto/asn1/p5_pbev2.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/p5_pbev2.c",
                ],
            "crypto/asn1/p5_scrypt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/p5_scrypt.c",
                ],
            "crypto/asn1/p8_pkey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/p8_pkey.c",
                ],
            "crypto/asn1/t_bitst.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/t_bitst.c",
                ],
            "crypto/asn1/t_pkey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/t_pkey.c",
                ],
            "crypto/asn1/t_spki.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/t_spki.c",
                ],
            "crypto/asn1/tasn_dec.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/tasn_dec.c",
                ],
            "crypto/asn1/tasn_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/tasn_enc.c",
                ],
            "crypto/asn1/tasn_fre.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/tasn_fre.c",
                ],
            "crypto/asn1/tasn_new.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/tasn_new.c",
                ],
            "crypto/asn1/tasn_prn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/tasn_prn.c",
                ],
            "crypto/asn1/tasn_scn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/tasn_scn.c",
                ],
            "crypto/asn1/tasn_typ.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/tasn_typ.c",
                ],
            "crypto/asn1/tasn_utl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/tasn_utl.c",
                ],
            "crypto/asn1/x_algor.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/x_algor.c",
                ],
            "crypto/asn1/x_bignum.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/x_bignum.c",
                ],
            "crypto/asn1/x_info.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/x_info.c",
                ],
            "crypto/asn1/x_int64.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/x_int64.c",
                ],
            "crypto/asn1/x_long.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/x_long.c",
                ],
            "crypto/asn1/x_pkey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/x_pkey.c",
                ],
            "crypto/asn1/x_sig.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/x_sig.c",
                ],
            "crypto/asn1/x_spki.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/x_spki.c",
                ],
            "crypto/asn1/x_val.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/asn1/x_val.c",
                ],
            "crypto/async/arch/async_null.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/async/arch/async_null.c",
                ],
            "crypto/async/arch/async_posix.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/async/arch/async_posix.c",
                ],
            "crypto/async/arch/async_win.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/async/arch/async_win.c",
                ],
            "crypto/async/async.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/async/async.c",
                ],
            "crypto/async/async_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/async/async_err.c",
                ],
            "crypto/async/async_wait.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/async/async_wait.c",
                ],
            "crypto/bf/bf_cfb64.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bf/bf_cfb64.c",
                ],
            "crypto/bf/bf_ecb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bf/bf_ecb.c",
                ],
            "crypto/bf/bf_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bf/bf_enc.c",
                ],
            "crypto/bf/bf_ofb64.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bf/bf_ofb64.c",
                ],
            "crypto/bf/bf_skey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bf/bf_skey.c",
                ],
            "crypto/bio/b_addr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/b_addr.c",
                ],
            "crypto/bio/b_dump.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/b_dump.c",
                ],
            "crypto/bio/b_print.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/b_print.c",
                ],
            "crypto/bio/b_sock.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/b_sock.c",
                ],
            "crypto/bio/b_sock2.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/b_sock2.c",
                ],
            "crypto/bio/bf_buff.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bf_buff.c",
                ],
            "crypto/bio/bf_lbuf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bf_lbuf.c",
                ],
            "crypto/bio/bf_nbio.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bf_nbio.c",
                ],
            "crypto/bio/bf_null.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bf_null.c",
                ],
            "crypto/bio/bio_cb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bio_cb.c",
                ],
            "crypto/bio/bio_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bio_err.c",
                ],
            "crypto/bio/bio_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bio_lib.c",
                ],
            "crypto/bio/bio_meth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bio_meth.c",
                ],
            "crypto/bio/bss_acpt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bss_acpt.c",
                ],
            "crypto/bio/bss_bio.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bss_bio.c",
                ],
            "crypto/bio/bss_conn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bss_conn.c",
                ],
            "crypto/bio/bss_dgram.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bss_dgram.c",
                ],
            "crypto/bio/bss_fd.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bss_fd.c",
                ],
            "crypto/bio/bss_file.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bss_file.c",
                ],
            "crypto/bio/bss_log.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bss_log.c",
                ],
            "crypto/bio/bss_mem.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bss_mem.c",
                ],
            "crypto/bio/bss_null.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bss_null.c",
                ],
            "crypto/bio/bss_sock.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bio/bss_sock.c",
                ],
            "crypto/blake2/blake2b.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/blake2/blake2b.c",
                ],
            "crypto/blake2/blake2s.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/blake2/blake2s.c",
                ],
            "crypto/blake2/m_blake2b.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/blake2/m_blake2b.c",
                ],
            "crypto/blake2/m_blake2s.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/blake2/m_blake2s.c",
                ],
            "crypto/bn/bn_add.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_add.c",
                ],
            "crypto/bn/bn_asm.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_asm.c",
                ],
            "crypto/bn/bn_blind.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_blind.c",
                ],
            "crypto/bn/bn_const.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_const.c",
                ],
            "crypto/bn/bn_ctx.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_ctx.c",
                ],
            "crypto/bn/bn_depr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_depr.c",
                ],
            "crypto/bn/bn_dh.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_dh.c",
                ],
            "crypto/bn/bn_div.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_div.c",
                ],
            "crypto/bn/bn_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_err.c",
                ],
            "crypto/bn/bn_exp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_exp.c",
                ],
            "crypto/bn/bn_exp2.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_exp2.c",
                ],
            "crypto/bn/bn_gcd.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_gcd.c",
                ],
            "crypto/bn/bn_gf2m.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_gf2m.c",
                ],
            "crypto/bn/bn_intern.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_intern.c",
                ],
            "crypto/bn/bn_kron.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_kron.c",
                ],
            "crypto/bn/bn_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_lib.c",
                ],
            "crypto/bn/bn_mod.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_mod.c",
                ],
            "crypto/bn/bn_mont.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_mont.c",
                ],
            "crypto/bn/bn_mpi.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_mpi.c",
                ],
            "crypto/bn/bn_mul.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_mul.c",
                ],
            "crypto/bn/bn_nist.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_nist.c",
                ],
            "crypto/bn/bn_prime.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_prime.c",
                ],
            "crypto/bn/bn_print.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_print.c",
                ],
            "crypto/bn/bn_rand.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_rand.c",
                ],
            "crypto/bn/bn_recp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_recp.c",
                ],
            "crypto/bn/bn_shift.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_shift.c",
                ],
            "crypto/bn/bn_sqr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_sqr.c",
                ],
            "crypto/bn/bn_sqrt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_sqrt.c",
                ],
            "crypto/bn/bn_srp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_srp.c",
                ],
            "crypto/bn/bn_word.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_word.c",
                ],
            "crypto/bn/bn_x931p.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/bn/bn_x931p.c",
                ],
            "crypto/buffer/buf_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/buffer/buf_err.c",
                ],
            "crypto/buffer/buffer.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/buffer/buffer.c",
                ],
            "crypto/camellia/camellia.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/camellia/camellia.c",
                ],
            "crypto/camellia/cmll_cbc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/camellia/cmll_cbc.c",
                ],
            "crypto/camellia/cmll_cfb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/camellia/cmll_cfb.c",
                ],
            "crypto/camellia/cmll_ctr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/camellia/cmll_ctr.c",
                ],
            "crypto/camellia/cmll_ecb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/camellia/cmll_ecb.c",
                ],
            "crypto/camellia/cmll_misc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/camellia/cmll_misc.c",
                ],
            "crypto/camellia/cmll_ofb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/camellia/cmll_ofb.c",
                ],
            "crypto/cast/c_cfb64.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cast/c_cfb64.c",
                ],
            "crypto/cast/c_ecb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cast/c_ecb.c",
                ],
            "crypto/cast/c_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cast/c_enc.c",
                ],
            "crypto/cast/c_ofb64.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cast/c_ofb64.c",
                ],
            "crypto/cast/c_skey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cast/c_skey.c",
                ],
            "crypto/chacha/chacha_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/chacha/chacha_enc.c",
                ],
            "crypto/cmac/cm_ameth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cmac/cm_ameth.c",
                ],
            "crypto/cmac/cm_pmeth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cmac/cm_pmeth.c",
                ],
            "crypto/cmac/cmac.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cmac/cmac.c",
                ],
            "crypto/cms/cms_asn1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_asn1.c",
                ],
            "crypto/cms/cms_att.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_att.c",
                ],
            "crypto/cms/cms_cd.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_cd.c",
                ],
            "crypto/cms/cms_dd.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_dd.c",
                ],
            "crypto/cms/cms_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_enc.c",
                ],
            "crypto/cms/cms_env.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_env.c",
                ],
            "crypto/cms/cms_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_err.c",
                ],
            "crypto/cms/cms_ess.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_ess.c",
                ],
            "crypto/cms/cms_io.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_io.c",
                ],
            "crypto/cms/cms_kari.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_kari.c",
                ],
            "crypto/cms/cms_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_lib.c",
                ],
            "crypto/cms/cms_pwri.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_pwri.c",
                ],
            "crypto/cms/cms_sd.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_sd.c",
                ],
            "crypto/cms/cms_smime.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cms/cms_smime.c",
                ],
            "crypto/comp/c_zlib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/comp/c_zlib.c",
                ],
            "crypto/comp/comp_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/comp/comp_err.c",
                ],
            "crypto/comp/comp_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/comp/comp_lib.c",
                ],
            "crypto/conf/conf_api.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/conf/conf_api.c",
                ],
            "crypto/conf/conf_def.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/conf/conf_def.c",
                ],
            "crypto/conf/conf_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/conf/conf_err.c",
                ],
            "crypto/conf/conf_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/conf/conf_lib.c",
                ],
            "crypto/conf/conf_mall.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/conf/conf_mall.c",
                ],
            "crypto/conf/conf_mod.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/conf/conf_mod.c",
                ],
            "crypto/conf/conf_sap.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/conf/conf_sap.c",
                ],
            "crypto/conf/conf_ssl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/conf/conf_ssl.c",
                ],
            "crypto/cpt_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cpt_err.c",
                ],
            "crypto/cryptlib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cryptlib.c",
                ],
            "crypto/ct/ct_b64.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ct/ct_b64.c",
                ],
            "crypto/ct/ct_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ct/ct_err.c",
                ],
            "crypto/ct/ct_log.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ct/ct_log.c",
                ],
            "crypto/ct/ct_oct.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ct/ct_oct.c",
                ],
            "crypto/ct/ct_policy.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ct/ct_policy.c",
                ],
            "crypto/ct/ct_prn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ct/ct_prn.c",
                ],
            "crypto/ct/ct_sct.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ct/ct_sct.c",
                ],
            "crypto/ct/ct_sct_ctx.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ct/ct_sct_ctx.c",
                ],
            "crypto/ct/ct_vfy.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ct/ct_vfy.c",
                ],
            "crypto/ct/ct_x509v3.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ct/ct_x509v3.c",
                ],
            "crypto/ctype.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ctype.c",
                ],
            "crypto/cversion.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/cversion.c",
                ],
            "crypto/des/cbc_cksm.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/cbc_cksm.c",
                ],
            "crypto/des/cbc_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/cbc_enc.c",
                ],
            "crypto/des/cfb64ede.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/cfb64ede.c",
                ],
            "crypto/des/cfb64enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/cfb64enc.c",
                ],
            "crypto/des/cfb_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/cfb_enc.c",
                ],
            "crypto/des/des_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/des_enc.c",
                ],
            "crypto/des/ecb3_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/ecb3_enc.c",
                ],
            "crypto/des/ecb_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/ecb_enc.c",
                ],
            "crypto/des/fcrypt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/fcrypt.c",
                ],
            "crypto/des/fcrypt_b.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/fcrypt_b.c",
                ],
            "crypto/des/ofb64ede.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/ofb64ede.c",
                ],
            "crypto/des/ofb64enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/ofb64enc.c",
                ],
            "crypto/des/ofb_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/ofb_enc.c",
                ],
            "crypto/des/pcbc_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/pcbc_enc.c",
                ],
            "crypto/des/qud_cksm.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/qud_cksm.c",
                ],
            "crypto/des/rand_key.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/rand_key.c",
                ],
            "crypto/des/set_key.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/set_key.c",
                ],
            "crypto/des/str2key.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/str2key.c",
                ],
            "crypto/des/xcbc_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/des/xcbc_enc.c",
                ],
            "crypto/dh/dh_ameth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_ameth.c",
                ],
            "crypto/dh/dh_asn1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_asn1.c",
                ],
            "crypto/dh/dh_check.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_check.c",
                ],
            "crypto/dh/dh_depr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_depr.c",
                ],
            "crypto/dh/dh_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_err.c",
                ],
            "crypto/dh/dh_gen.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_gen.c",
                ],
            "crypto/dh/dh_kdf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_kdf.c",
                ],
            "crypto/dh/dh_key.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_key.c",
                ],
            "crypto/dh/dh_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_lib.c",
                ],
            "crypto/dh/dh_meth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_meth.c",
                ],
            "crypto/dh/dh_pmeth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_pmeth.c",
                ],
            "crypto/dh/dh_prn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_prn.c",
                ],
            "crypto/dh/dh_rfc5114.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_rfc5114.c",
                ],
            "crypto/dh/dh_rfc7919.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dh/dh_rfc7919.c",
                ],
            "crypto/dsa/dsa_ameth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_ameth.c",
                ],
            "crypto/dsa/dsa_asn1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_asn1.c",
                ],
            "crypto/dsa/dsa_depr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_depr.c",
                ],
            "crypto/dsa/dsa_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_err.c",
                ],
            "crypto/dsa/dsa_gen.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_gen.c",
                ],
            "crypto/dsa/dsa_key.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_key.c",
                ],
            "crypto/dsa/dsa_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_lib.c",
                ],
            "crypto/dsa/dsa_meth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_meth.c",
                ],
            "crypto/dsa/dsa_ossl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_ossl.c",
                ],
            "crypto/dsa/dsa_pmeth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_pmeth.c",
                ],
            "crypto/dsa/dsa_prn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_prn.c",
                ],
            "crypto/dsa/dsa_sign.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_sign.c",
                ],
            "crypto/dsa/dsa_vrf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dsa/dsa_vrf.c",
                ],
            "crypto/dso/dso_dl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dso/dso_dl.c",
                ],
            "crypto/dso/dso_dlfcn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dso/dso_dlfcn.c",
                ],
            "crypto/dso/dso_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dso/dso_err.c",
                ],
            "crypto/dso/dso_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dso/dso_lib.c",
                ],
            "crypto/dso/dso_openssl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dso/dso_openssl.c",
                ],
            "crypto/dso/dso_vms.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dso/dso_vms.c",
                ],
            "crypto/dso/dso_win32.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/dso/dso_win32.c",
                ],
            "crypto/ebcdic.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ebcdic.c",
                ],
            "crypto/ec/curve25519.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve25519.c",
                ],
            "crypto/ec/curve448/arch_32/f_impl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/arch_32/f_impl.c",
                ],
            "crypto/ec/curve448/curve448.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/curve448.c",
                ],
            "crypto/ec/curve448/curve448_tables.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/curve448_tables.c",
                ],
            "crypto/ec/curve448/eddsa.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/eddsa.c",
                ],
            "crypto/ec/curve448/f_generic.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/f_generic.c",
                ],
            "crypto/ec/curve448/scalar.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/curve448/scalar.c",
                ],
            "crypto/ec/ec2_oct.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec2_oct.c",
                ],
            "crypto/ec/ec2_smpl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec2_smpl.c",
                ],
            "crypto/ec/ec_ameth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_ameth.c",
                ],
            "crypto/ec/ec_asn1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_asn1.c",
                ],
            "crypto/ec/ec_check.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_check.c",
                ],
            "crypto/ec/ec_curve.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_curve.c",
                ],
            "crypto/ec/ec_cvt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_cvt.c",
                ],
            "crypto/ec/ec_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_err.c",
                ],
            "crypto/ec/ec_key.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_key.c",
                ],
            "crypto/ec/ec_kmeth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_kmeth.c",
                ],
            "crypto/ec/ec_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_lib.c",
                ],
            "crypto/ec/ec_mult.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_mult.c",
                ],
            "crypto/ec/ec_oct.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_oct.c",
                ],
            "crypto/ec/ec_pmeth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_pmeth.c",
                ],
            "crypto/ec/ec_print.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ec_print.c",
                ],
            "crypto/ec/ecdh_kdf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecdh_kdf.c",
                ],
            "crypto/ec/ecdh_ossl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecdh_ossl.c",
                ],
            "crypto/ec/ecdsa_ossl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecdsa_ossl.c",
                ],
            "crypto/ec/ecdsa_sign.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecdsa_sign.c",
                ],
            "crypto/ec/ecdsa_vrf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecdsa_vrf.c",
                ],
            "crypto/ec/eck_prn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/eck_prn.c",
                ],
            "crypto/ec/ecp_mont.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecp_mont.c",
                ],
            "crypto/ec/ecp_nist.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecp_nist.c",
                ],
            "crypto/ec/ecp_nistp224.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecp_nistp224.c",
                ],
            "crypto/ec/ecp_nistp256.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecp_nistp256.c",
                ],
            "crypto/ec/ecp_nistp521.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecp_nistp521.c",
                ],
            "crypto/ec/ecp_nistputil.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecp_nistputil.c",
                ],
            "crypto/ec/ecp_oct.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecp_oct.c",
                ],
            "crypto/ec/ecp_smpl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecp_smpl.c",
                ],
            "crypto/ec/ecx_meth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ec/ecx_meth.c",
                ],
            "crypto/err/err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/err/err.c",
                ],
            "crypto/err/err_all.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/err/err_all.c",
                ],
            "crypto/err/err_prn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/err/err_prn.c",
                ],
            "crypto/evp/bio_b64.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/bio_b64.c",
                ],
            "crypto/evp/bio_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/bio_enc.c",
                ],
            "crypto/evp/bio_md.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/bio_md.c",
                ],
            "crypto/evp/bio_ok.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/bio_ok.c",
                ],
            "crypto/evp/c_allc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/c_allc.c",
                ],
            "crypto/evp/c_alld.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/c_alld.c",
                ],
            "crypto/evp/cmeth_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/cmeth_lib.c",
                ],
            "crypto/evp/digest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/digest.c",
                ],
            "crypto/evp/e_aes.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_aes.c",
                ],
            "crypto/evp/e_aes_cbc_hmac_sha1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_aes_cbc_hmac_sha1.c",
                ],
            "crypto/evp/e_aes_cbc_hmac_sha256.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_aes_cbc_hmac_sha256.c",
                ],
            "crypto/evp/e_aria.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_aria.c",
                ],
            "crypto/evp/e_bf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_bf.c",
                ],
            "crypto/evp/e_camellia.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_camellia.c",
                ],
            "crypto/evp/e_cast.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_cast.c",
                ],
            "crypto/evp/e_chacha20_poly1305.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_chacha20_poly1305.c",
                ],
            "crypto/evp/e_des.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_des.c",
                ],
            "crypto/evp/e_des3.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_des3.c",
                ],
            "crypto/evp/e_idea.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_idea.c",
                ],
            "crypto/evp/e_null.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_null.c",
                ],
            "crypto/evp/e_old.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_old.c",
                ],
            "crypto/evp/e_rc2.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_rc2.c",
                ],
            "crypto/evp/e_rc4.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_rc4.c",
                ],
            "crypto/evp/e_rc4_hmac_md5.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_rc4_hmac_md5.c",
                ],
            "crypto/evp/e_rc5.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_rc5.c",
                ],
            "crypto/evp/e_seed.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_seed.c",
                ],
            "crypto/evp/e_sm4.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_sm4.c",
                ],
            "crypto/evp/e_xcbc_d.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/e_xcbc_d.c",
                ],
            "crypto/evp/encode.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/encode.c",
                ],
            "crypto/evp/evp_cnf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/evp_cnf.c",
                ],
            "crypto/evp/evp_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/evp_enc.c",
                ],
            "crypto/evp/evp_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/evp_err.c",
                ],
            "crypto/evp/evp_key.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/evp_key.c",
                ],
            "crypto/evp/evp_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/evp_lib.c",
                ],
            "crypto/evp/evp_pbe.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/evp_pbe.c",
                ],
            "crypto/evp/evp_pkey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/evp_pkey.c",
                ],
            "crypto/evp/m_md2.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/m_md2.c",
                ],
            "crypto/evp/m_md4.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/m_md4.c",
                ],
            "crypto/evp/m_md5.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/m_md5.c",
                ],
            "crypto/evp/m_md5_sha1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/m_md5_sha1.c",
                ],
            "crypto/evp/m_mdc2.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/m_mdc2.c",
                ],
            "crypto/evp/m_null.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/m_null.c",
                ],
            "crypto/evp/m_ripemd.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/m_ripemd.c",
                ],
            "crypto/evp/m_sha1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/m_sha1.c",
                ],
            "crypto/evp/m_sha3.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/m_sha3.c",
                ],
            "crypto/evp/m_sigver.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/m_sigver.c",
                ],
            "crypto/evp/m_wp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/m_wp.c",
                ],
            "crypto/evp/names.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/names.c",
                ],
            "crypto/evp/p5_crpt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/p5_crpt.c",
                ],
            "crypto/evp/p5_crpt2.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/p5_crpt2.c",
                ],
            "crypto/evp/p_dec.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/p_dec.c",
                ],
            "crypto/evp/p_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/p_enc.c",
                ],
            "crypto/evp/p_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/p_lib.c",
                ],
            "crypto/evp/p_open.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/p_open.c",
                ],
            "crypto/evp/p_seal.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/p_seal.c",
                ],
            "crypto/evp/p_sign.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/p_sign.c",
                ],
            "crypto/evp/p_verify.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/p_verify.c",
                ],
            "crypto/evp/pbe_scrypt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/pbe_scrypt.c",
                ],
            "crypto/evp/pmeth_fn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/pmeth_fn.c",
                ],
            "crypto/evp/pmeth_gn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/pmeth_gn.c",
                ],
            "crypto/evp/pmeth_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/evp/pmeth_lib.c",
                ],
            "crypto/ex_data.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ex_data.c",
                ],
            "crypto/getenv.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/getenv.c",
                ],
            "crypto/hmac/hm_ameth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/hmac/hm_ameth.c",
                ],
            "crypto/hmac/hm_pmeth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/hmac/hm_pmeth.c",
                ],
            "crypto/hmac/hmac.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/hmac/hmac.c",
                ],
            "crypto/idea/i_cbc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/idea/i_cbc.c",
                ],
            "crypto/idea/i_cfb64.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/idea/i_cfb64.c",
                ],
            "crypto/idea/i_ecb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/idea/i_ecb.c",
                ],
            "crypto/idea/i_ofb64.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/idea/i_ofb64.c",
                ],
            "crypto/idea/i_skey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/idea/i_skey.c",
                ],
            "crypto/init.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/init.c",
                ],
            "crypto/kdf/hkdf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/kdf/hkdf.c",
                ],
            "crypto/kdf/kdf_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/kdf/kdf_err.c",
                ],
            "crypto/kdf/scrypt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/kdf/scrypt.c",
                ],
            "crypto/kdf/tls1_prf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/kdf/tls1_prf.c",
                ],
            "crypto/lhash/lh_stats.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/lhash/lh_stats.c",
                ],
            "crypto/lhash/lhash.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/lhash/lhash.c",
                ],
            "crypto/md4/md4_dgst.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/md4/md4_dgst.c",
                ],
            "crypto/md4/md4_one.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/md4/md4_one.c",
                ],
            "crypto/md5/md5_dgst.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/md5/md5_dgst.c",
                ],
            "crypto/md5/md5_one.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/md5/md5_one.c",
                ],
            "crypto/mdc2/mdc2_one.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/mdc2/mdc2_one.c",
                ],
            "crypto/mdc2/mdc2dgst.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/mdc2/mdc2dgst.c",
                ],
            "crypto/mem.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/mem.c",
                ],
            "crypto/mem_clr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/mem_clr.c",
                ],
            "crypto/mem_dbg.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/mem_dbg.c",
                ],
            "crypto/mem_sec.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/mem_sec.c",
                ],
            "crypto/modes/cbc128.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/cbc128.c",
                ],
            "crypto/modes/ccm128.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/ccm128.c",
                ],
            "crypto/modes/cfb128.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/cfb128.c",
                ],
            "crypto/modes/ctr128.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/ctr128.c",
                ],
            "crypto/modes/cts128.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/cts128.c",
                ],
            "crypto/modes/gcm128.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/gcm128.c",
                ],
            "crypto/modes/ocb128.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/ocb128.c",
                ],
            "crypto/modes/ofb128.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/ofb128.c",
                ],
            "crypto/modes/wrap128.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/wrap128.c",
                ],
            "crypto/modes/xts128.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/modes/xts128.c",
                ],
            "crypto/o_dir.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/o_dir.c",
                ],
            "crypto/o_fips.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/o_fips.c",
                ],
            "crypto/o_fopen.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/o_fopen.c",
                ],
            "crypto/o_init.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/o_init.c",
                ],
            "crypto/o_str.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/o_str.c",
                ],
            "crypto/o_time.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/o_time.c",
                ],
            "crypto/objects/o_names.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/objects/o_names.c",
                ],
            "crypto/objects/obj_dat.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/objects/obj_dat.c",
                ],
            "crypto/objects/obj_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/objects/obj_err.c",
                ],
            "crypto/objects/obj_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/objects/obj_lib.c",
                ],
            "crypto/objects/obj_xref.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/objects/obj_xref.c",
                ],
            "crypto/ocsp/ocsp_asn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ocsp/ocsp_asn.c",
                ],
            "crypto/ocsp/ocsp_cl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ocsp/ocsp_cl.c",
                ],
            "crypto/ocsp/ocsp_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ocsp/ocsp_err.c",
                ],
            "crypto/ocsp/ocsp_ext.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ocsp/ocsp_ext.c",
                ],
            "crypto/ocsp/ocsp_ht.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ocsp/ocsp_ht.c",
                ],
            "crypto/ocsp/ocsp_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ocsp/ocsp_lib.c",
                ],
            "crypto/ocsp/ocsp_prn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ocsp/ocsp_prn.c",
                ],
            "crypto/ocsp/ocsp_srv.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ocsp/ocsp_srv.c",
                ],
            "crypto/ocsp/ocsp_vfy.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ocsp/ocsp_vfy.c",
                ],
            "crypto/ocsp/v3_ocsp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ocsp/v3_ocsp.c",
                ],
            "crypto/pem/pem_all.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/pem_all.c",
                ],
            "crypto/pem/pem_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/pem_err.c",
                ],
            "crypto/pem/pem_info.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/pem_info.c",
                ],
            "crypto/pem/pem_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/pem_lib.c",
                ],
            "crypto/pem/pem_oth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/pem_oth.c",
                ],
            "crypto/pem/pem_pk8.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/pem_pk8.c",
                ],
            "crypto/pem/pem_pkey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/pem_pkey.c",
                ],
            "crypto/pem/pem_sign.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/pem_sign.c",
                ],
            "crypto/pem/pem_x509.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/pem_x509.c",
                ],
            "crypto/pem/pem_xaux.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/pem_xaux.c",
                ],
            "crypto/pem/pvkfmt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pem/pvkfmt.c",
                ],
            "crypto/pkcs12/p12_add.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_add.c",
                ],
            "crypto/pkcs12/p12_asn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_asn.c",
                ],
            "crypto/pkcs12/p12_attr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_attr.c",
                ],
            "crypto/pkcs12/p12_crpt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_crpt.c",
                ],
            "crypto/pkcs12/p12_crt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_crt.c",
                ],
            "crypto/pkcs12/p12_decr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_decr.c",
                ],
            "crypto/pkcs12/p12_init.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_init.c",
                ],
            "crypto/pkcs12/p12_key.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_key.c",
                ],
            "crypto/pkcs12/p12_kiss.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_kiss.c",
                ],
            "crypto/pkcs12/p12_mutl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_mutl.c",
                ],
            "crypto/pkcs12/p12_npas.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_npas.c",
                ],
            "crypto/pkcs12/p12_p8d.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_p8d.c",
                ],
            "crypto/pkcs12/p12_p8e.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_p8e.c",
                ],
            "crypto/pkcs12/p12_sbag.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_sbag.c",
                ],
            "crypto/pkcs12/p12_utl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/p12_utl.c",
                ],
            "crypto/pkcs12/pk12err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs12/pk12err.c",
                ],
            "crypto/pkcs7/bio_pk7.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs7/bio_pk7.c",
                ],
            "crypto/pkcs7/pk7_asn1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs7/pk7_asn1.c",
                ],
            "crypto/pkcs7/pk7_attr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs7/pk7_attr.c",
                ],
            "crypto/pkcs7/pk7_doit.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs7/pk7_doit.c",
                ],
            "crypto/pkcs7/pk7_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs7/pk7_lib.c",
                ],
            "crypto/pkcs7/pk7_mime.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs7/pk7_mime.c",
                ],
            "crypto/pkcs7/pk7_smime.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs7/pk7_smime.c",
                ],
            "crypto/pkcs7/pkcs7err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/pkcs7/pkcs7err.c",
                ],
            "crypto/poly1305/poly1305.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/poly1305.c",
                ],
            "crypto/poly1305/poly1305_ameth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/poly1305_ameth.c",
                ],
            "crypto/poly1305/poly1305_pmeth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/poly1305/poly1305_pmeth.c",
                ],
            "crypto/rand/drbg_ctr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rand/drbg_ctr.c",
                ],
            "crypto/rand/drbg_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rand/drbg_lib.c",
                ],
            "crypto/rand/rand_egd.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rand/rand_egd.c",
                ],
            "crypto/rand/rand_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rand/rand_err.c",
                ],
            "crypto/rand/rand_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rand/rand_lib.c",
                ],
            "crypto/rand/rand_unix.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rand/rand_unix.c",
                ],
            "crypto/rand/rand_vms.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rand/rand_vms.c",
                ],
            "crypto/rand/rand_win.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rand/rand_win.c",
                ],
            "crypto/rand/randfile.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rand/randfile.c",
                ],
            "crypto/rc2/rc2_cbc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc2/rc2_cbc.c",
                ],
            "crypto/rc2/rc2_ecb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc2/rc2_ecb.c",
                ],
            "crypto/rc2/rc2_skey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc2/rc2_skey.c",
                ],
            "crypto/rc2/rc2cfb64.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc2/rc2cfb64.c",
                ],
            "crypto/rc2/rc2ofb64.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc2/rc2ofb64.c",
                ],
            "crypto/rc4/rc4_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc4/rc4_enc.c",
                ],
            "crypto/rc4/rc4_skey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rc4/rc4_skey.c",
                ],
            "crypto/ripemd/rmd_dgst.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ripemd/rmd_dgst.c",
                ],
            "crypto/ripemd/rmd_one.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ripemd/rmd_one.c",
                ],
            "crypto/rsa/rsa_ameth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_ameth.c",
                ],
            "crypto/rsa/rsa_asn1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_asn1.c",
                ],
            "crypto/rsa/rsa_chk.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_chk.c",
                ],
            "crypto/rsa/rsa_crpt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_crpt.c",
                ],
            "crypto/rsa/rsa_depr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_depr.c",
                ],
            "crypto/rsa/rsa_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_err.c",
                ],
            "crypto/rsa/rsa_gen.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_gen.c",
                ],
            "crypto/rsa/rsa_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_lib.c",
                ],
            "crypto/rsa/rsa_meth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_meth.c",
                ],
            "crypto/rsa/rsa_mp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_mp.c",
                ],
            "crypto/rsa/rsa_none.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_none.c",
                ],
            "crypto/rsa/rsa_oaep.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_oaep.c",
                ],
            "crypto/rsa/rsa_ossl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_ossl.c",
                ],
            "crypto/rsa/rsa_pk1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_pk1.c",
                ],
            "crypto/rsa/rsa_pmeth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_pmeth.c",
                ],
            "crypto/rsa/rsa_prn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_prn.c",
                ],
            "crypto/rsa/rsa_pss.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_pss.c",
                ],
            "crypto/rsa/rsa_saos.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_saos.c",
                ],
            "crypto/rsa/rsa_sign.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_sign.c",
                ],
            "crypto/rsa/rsa_ssl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_ssl.c",
                ],
            "crypto/rsa/rsa_x931.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_x931.c",
                ],
            "crypto/rsa/rsa_x931g.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/rsa/rsa_x931g.c",
                ],
            "crypto/seed/seed.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/seed/seed.c",
                ],
            "crypto/seed/seed_cbc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/seed/seed_cbc.c",
                ],
            "crypto/seed/seed_cfb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/seed/seed_cfb.c",
                ],
            "crypto/seed/seed_ecb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/seed/seed_ecb.c",
                ],
            "crypto/seed/seed_ofb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/seed/seed_ofb.c",
                ],
            "crypto/sha/keccak1600.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/keccak1600.c",
                ],
            "crypto/sha/sha1_one.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/sha1_one.c",
                ],
            "crypto/sha/sha1dgst.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/sha1dgst.c",
                ],
            "crypto/sha/sha256.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/sha256.c",
                ],
            "crypto/sha/sha512.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sha/sha512.c",
                ],
            "crypto/siphash/siphash.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/siphash/siphash.c",
                ],
            "crypto/siphash/siphash_ameth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/siphash/siphash_ameth.c",
                ],
            "crypto/siphash/siphash_pmeth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/siphash/siphash_pmeth.c",
                ],
            "crypto/sm2/sm2_crypt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sm2/sm2_crypt.c",
                ],
            "crypto/sm2/sm2_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sm2/sm2_err.c",
                ],
            "crypto/sm2/sm2_pmeth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sm2/sm2_pmeth.c",
                ],
            "crypto/sm2/sm2_sign.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sm2/sm2_sign.c",
                ],
            "crypto/sm3/m_sm3.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sm3/m_sm3.c",
                ],
            "crypto/sm3/sm3.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sm3/sm3.c",
                ],
            "crypto/sm4/sm4.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/sm4/sm4.c",
                ],
            "crypto/srp/srp_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/srp/srp_lib.c",
                ],
            "crypto/srp/srp_vfy.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/srp/srp_vfy.c",
                ],
            "crypto/stack/stack.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/stack/stack.c",
                ],
            "crypto/store/loader_file.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/store/loader_file.c",
                ],
            "crypto/store/store_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/store/store_err.c",
                ],
            "crypto/store/store_init.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/store/store_init.c",
                ],
            "crypto/store/store_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/store/store_lib.c",
                ],
            "crypto/store/store_register.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/store/store_register.c",
                ],
            "crypto/store/store_strings.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/store/store_strings.c",
                ],
            "crypto/threads_none.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/threads_none.c",
                ],
            "crypto/threads_pthread.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/threads_pthread.c",
                ],
            "crypto/threads_win.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/threads_win.c",
                ],
            "crypto/ts/ts_asn1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/ts_asn1.c",
                ],
            "crypto/ts/ts_conf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/ts_conf.c",
                ],
            "crypto/ts/ts_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/ts_err.c",
                ],
            "crypto/ts/ts_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/ts_lib.c",
                ],
            "crypto/ts/ts_req_print.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/ts_req_print.c",
                ],
            "crypto/ts/ts_req_utils.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/ts_req_utils.c",
                ],
            "crypto/ts/ts_rsp_print.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/ts_rsp_print.c",
                ],
            "crypto/ts/ts_rsp_sign.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/ts_rsp_sign.c",
                ],
            "crypto/ts/ts_rsp_utils.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/ts_rsp_utils.c",
                ],
            "crypto/ts/ts_rsp_verify.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/ts_rsp_verify.c",
                ],
            "crypto/ts/ts_verify_ctx.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ts/ts_verify_ctx.c",
                ],
            "crypto/txt_db/txt_db.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/txt_db/txt_db.c",
                ],
            "crypto/ui/ui_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ui/ui_err.c",
                ],
            "crypto/ui/ui_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ui/ui_lib.c",
                ],
            "crypto/ui/ui_null.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ui/ui_null.c",
                ],
            "crypto/ui/ui_openssl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ui/ui_openssl.c",
                ],
            "crypto/ui/ui_util.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/ui/ui_util.c",
                ],
            "crypto/uid.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/uid.c",
                ],
            "crypto/whrlpool/wp_block.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/whrlpool/wp_block.c",
                ],
            "crypto/whrlpool/wp_dgst.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/whrlpool/wp_dgst.c",
                ],
            "crypto/x509/by_dir.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/by_dir.c",
                ],
            "crypto/x509/by_file.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/by_file.c",
                ],
            "crypto/x509/t_crl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/t_crl.c",
                ],
            "crypto/x509/t_req.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/t_req.c",
                ],
            "crypto/x509/t_x509.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/t_x509.c",
                ],
            "crypto/x509/x509_att.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_att.c",
                ],
            "crypto/x509/x509_cmp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_cmp.c",
                ],
            "crypto/x509/x509_d2.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_d2.c",
                ],
            "crypto/x509/x509_def.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_def.c",
                ],
            "crypto/x509/x509_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_err.c",
                ],
            "crypto/x509/x509_ext.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_ext.c",
                ],
            "crypto/x509/x509_lu.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_lu.c",
                ],
            "crypto/x509/x509_meth.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_meth.c",
                ],
            "crypto/x509/x509_obj.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_obj.c",
                ],
            "crypto/x509/x509_r2x.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_r2x.c",
                ],
            "crypto/x509/x509_req.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_req.c",
                ],
            "crypto/x509/x509_set.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_set.c",
                ],
            "crypto/x509/x509_trs.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_trs.c",
                ],
            "crypto/x509/x509_txt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_txt.c",
                ],
            "crypto/x509/x509_v3.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_v3.c",
                ],
            "crypto/x509/x509_vfy.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_vfy.c",
                ],
            "crypto/x509/x509_vpm.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509_vpm.c",
                ],
            "crypto/x509/x509cset.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509cset.c",
                ],
            "crypto/x509/x509name.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509name.c",
                ],
            "crypto/x509/x509rset.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509rset.c",
                ],
            "crypto/x509/x509spki.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509spki.c",
                ],
            "crypto/x509/x509type.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x509type.c",
                ],
            "crypto/x509/x_all.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x_all.c",
                ],
            "crypto/x509/x_attrib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x_attrib.c",
                ],
            "crypto/x509/x_crl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x_crl.c",
                ],
            "crypto/x509/x_exten.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x_exten.c",
                ],
            "crypto/x509/x_name.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x_name.c",
                ],
            "crypto/x509/x_pubkey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x_pubkey.c",
                ],
            "crypto/x509/x_req.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x_req.c",
                ],
            "crypto/x509/x_x509.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x_x509.c",
                ],
            "crypto/x509/x_x509a.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509/x_x509a.c",
                ],
            "crypto/x509v3/pcy_cache.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/pcy_cache.c",
                ],
            "crypto/x509v3/pcy_data.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/pcy_data.c",
                ],
            "crypto/x509v3/pcy_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/pcy_lib.c",
                ],
            "crypto/x509v3/pcy_map.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/pcy_map.c",
                ],
            "crypto/x509v3/pcy_node.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/pcy_node.c",
                ],
            "crypto/x509v3/pcy_tree.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/pcy_tree.c",
                ],
            "crypto/x509v3/v3_addr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_addr.c",
                ],
            "crypto/x509v3/v3_admis.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_admis.c",
                ],
            "crypto/x509v3/v3_akey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_akey.c",
                ],
            "crypto/x509v3/v3_akeya.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_akeya.c",
                ],
            "crypto/x509v3/v3_alt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_alt.c",
                ],
            "crypto/x509v3/v3_asid.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_asid.c",
                ],
            "crypto/x509v3/v3_bcons.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_bcons.c",
                ],
            "crypto/x509v3/v3_bitst.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_bitst.c",
                ],
            "crypto/x509v3/v3_conf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_conf.c",
                ],
            "crypto/x509v3/v3_cpols.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_cpols.c",
                ],
            "crypto/x509v3/v3_crld.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_crld.c",
                ],
            "crypto/x509v3/v3_enum.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_enum.c",
                ],
            "crypto/x509v3/v3_extku.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_extku.c",
                ],
            "crypto/x509v3/v3_genn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_genn.c",
                ],
            "crypto/x509v3/v3_ia5.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_ia5.c",
                ],
            "crypto/x509v3/v3_info.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_info.c",
                ],
            "crypto/x509v3/v3_int.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_int.c",
                ],
            "crypto/x509v3/v3_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_lib.c",
                ],
            "crypto/x509v3/v3_ncons.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_ncons.c",
                ],
            "crypto/x509v3/v3_pci.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_pci.c",
                ],
            "crypto/x509v3/v3_pcia.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_pcia.c",
                ],
            "crypto/x509v3/v3_pcons.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_pcons.c",
                ],
            "crypto/x509v3/v3_pku.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_pku.c",
                ],
            "crypto/x509v3/v3_pmaps.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_pmaps.c",
                ],
            "crypto/x509v3/v3_prn.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_prn.c",
                ],
            "crypto/x509v3/v3_purp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_purp.c",
                ],
            "crypto/x509v3/v3_skey.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_skey.c",
                ],
            "crypto/x509v3/v3_sxnet.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_sxnet.c",
                ],
            "crypto/x509v3/v3_tlsf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_tlsf.c",
                ],
            "crypto/x509v3/v3_utl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3_utl.c",
                ],
            "crypto/x509v3/v3err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/crypto/x509v3/v3err.c",
                ],
            "fuzz/asn1-test" =>
                [
                    "fuzz/asn1.o",
                    "fuzz/test-corpus.o",
                ],
            "fuzz/asn1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/asn1.c",
                ],
            "fuzz/asn1parse-test" =>
                [
                    "fuzz/asn1parse.o",
                    "fuzz/test-corpus.o",
                ],
            "fuzz/asn1parse.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/asn1parse.c",
                ],
            "fuzz/bignum-test" =>
                [
                    "fuzz/bignum.o",
                    "fuzz/test-corpus.o",
                ],
            "fuzz/bignum.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/bignum.c",
                ],
            "fuzz/bndiv-test" =>
                [
                    "fuzz/bndiv.o",
                    "fuzz/test-corpus.o",
                ],
            "fuzz/bndiv.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/bndiv.c",
                ],
            "fuzz/client-test" =>
                [
                    "fuzz/client.o",
                    "fuzz/test-corpus.o",
                ],
            "fuzz/client.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/client.c",
                ],
            "fuzz/cms-test" =>
                [
                    "fuzz/cms.o",
                    "fuzz/test-corpus.o",
                ],
            "fuzz/cms.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/cms.c",
                ],
            "fuzz/conf-test" =>
                [
                    "fuzz/conf.o",
                    "fuzz/test-corpus.o",
                ],
            "fuzz/conf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/conf.c",
                ],
            "fuzz/crl-test" =>
                [
                    "fuzz/crl.o",
                    "fuzz/test-corpus.o",
                ],
            "fuzz/crl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/crl.c",
                ],
            "fuzz/ct-test" =>
                [
                    "fuzz/ct.o",
                    "fuzz/test-corpus.o",
                ],
            "fuzz/ct.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/ct.c",
                ],
            "fuzz/server-test" =>
                [
                    "fuzz/server.o",
                    "fuzz/test-corpus.o",
                ],
            "fuzz/server.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/server.c",
                ],
            "fuzz/test-corpus.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/test-corpus.c",
                ],
            "fuzz/x509-test" =>
                [
                    "fuzz/test-corpus.o",
                    "fuzz/x509.o",
                ],
            "fuzz/x509.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/fuzz/x509.c",
                ],
            "libcrypto" =>
                [
                    "crypto/aes/aes_cbc.o",
                    "crypto/aes/aes_cfb.o",
                    "crypto/aes/aes_core.o",
                    "crypto/aes/aes_ecb.o",
                    "crypto/aes/aes_ige.o",
                    "crypto/aes/aes_misc.o",
                    "crypto/aes/aes_ofb.o",
                    "crypto/aes/aes_wrap.o",
                    "crypto/aria/aria.o",
                    "crypto/asn1/a_bitstr.o",
                    "crypto/asn1/a_d2i_fp.o",
                    "crypto/asn1/a_digest.o",
                    "crypto/asn1/a_dup.o",
                    "crypto/asn1/a_gentm.o",
                    "crypto/asn1/a_i2d_fp.o",
                    "crypto/asn1/a_int.o",
                    "crypto/asn1/a_mbstr.o",
                    "crypto/asn1/a_object.o",
                    "crypto/asn1/a_octet.o",
                    "crypto/asn1/a_print.o",
                    "crypto/asn1/a_sign.o",
                    "crypto/asn1/a_strex.o",
                    "crypto/asn1/a_strnid.o",
                    "crypto/asn1/a_time.o",
                    "crypto/asn1/a_type.o",
                    "crypto/asn1/a_utctm.o",
                    "crypto/asn1/a_utf8.o",
                    "crypto/asn1/a_verify.o",
                    "crypto/asn1/ameth_lib.o",
                    "crypto/asn1/asn1_err.o",
                    "crypto/asn1/asn1_gen.o",
                    "crypto/asn1/asn1_item_list.o",
                    "crypto/asn1/asn1_lib.o",
                    "crypto/asn1/asn1_par.o",
                    "crypto/asn1/asn_mime.o",
                    "crypto/asn1/asn_moid.o",
                    "crypto/asn1/asn_mstbl.o",
                    "crypto/asn1/asn_pack.o",
                    "crypto/asn1/bio_asn1.o",
                    "crypto/asn1/bio_ndef.o",
                    "crypto/asn1/d2i_pr.o",
                    "crypto/asn1/d2i_pu.o",
                    "crypto/asn1/evp_asn1.o",
                    "crypto/asn1/f_int.o",
                    "crypto/asn1/f_string.o",
                    "crypto/asn1/i2d_pr.o",
                    "crypto/asn1/i2d_pu.o",
                    "crypto/asn1/n_pkey.o",
                    "crypto/asn1/nsseq.o",
                    "crypto/asn1/p5_pbe.o",
                    "crypto/asn1/p5_pbev2.o",
                    "crypto/asn1/p5_scrypt.o",
                    "crypto/asn1/p8_pkey.o",
                    "crypto/asn1/t_bitst.o",
                    "crypto/asn1/t_pkey.o",
                    "crypto/asn1/t_spki.o",
                    "crypto/asn1/tasn_dec.o",
                    "crypto/asn1/tasn_enc.o",
                    "crypto/asn1/tasn_fre.o",
                    "crypto/asn1/tasn_new.o",
                    "crypto/asn1/tasn_prn.o",
                    "crypto/asn1/tasn_scn.o",
                    "crypto/asn1/tasn_typ.o",
                    "crypto/asn1/tasn_utl.o",
                    "crypto/asn1/x_algor.o",
                    "crypto/asn1/x_bignum.o",
                    "crypto/asn1/x_info.o",
                    "crypto/asn1/x_int64.o",
                    "crypto/asn1/x_long.o",
                    "crypto/asn1/x_pkey.o",
                    "crypto/asn1/x_sig.o",
                    "crypto/asn1/x_spki.o",
                    "crypto/asn1/x_val.o",
                    "crypto/async/arch/async_null.o",
                    "crypto/async/arch/async_posix.o",
                    "crypto/async/arch/async_win.o",
                    "crypto/async/async.o",
                    "crypto/async/async_err.o",
                    "crypto/async/async_wait.o",
                    "crypto/bf/bf_cfb64.o",
                    "crypto/bf/bf_ecb.o",
                    "crypto/bf/bf_enc.o",
                    "crypto/bf/bf_ofb64.o",
                    "crypto/bf/bf_skey.o",
                    "crypto/bio/b_addr.o",
                    "crypto/bio/b_dump.o",
                    "crypto/bio/b_print.o",
                    "crypto/bio/b_sock.o",
                    "crypto/bio/b_sock2.o",
                    "crypto/bio/bf_buff.o",
                    "crypto/bio/bf_lbuf.o",
                    "crypto/bio/bf_nbio.o",
                    "crypto/bio/bf_null.o",
                    "crypto/bio/bio_cb.o",
                    "crypto/bio/bio_err.o",
                    "crypto/bio/bio_lib.o",
                    "crypto/bio/bio_meth.o",
                    "crypto/bio/bss_acpt.o",
                    "crypto/bio/bss_bio.o",
                    "crypto/bio/bss_conn.o",
                    "crypto/bio/bss_dgram.o",
                    "crypto/bio/bss_fd.o",
                    "crypto/bio/bss_file.o",
                    "crypto/bio/bss_log.o",
                    "crypto/bio/bss_mem.o",
                    "crypto/bio/bss_null.o",
                    "crypto/bio/bss_sock.o",
                    "crypto/blake2/blake2b.o",
                    "crypto/blake2/blake2s.o",
                    "crypto/blake2/m_blake2b.o",
                    "crypto/blake2/m_blake2s.o",
                    "crypto/bn/bn_add.o",
                    "crypto/bn/bn_asm.o",
                    "crypto/bn/bn_blind.o",
                    "crypto/bn/bn_const.o",
                    "crypto/bn/bn_ctx.o",
                    "crypto/bn/bn_depr.o",
                    "crypto/bn/bn_dh.o",
                    "crypto/bn/bn_div.o",
                    "crypto/bn/bn_err.o",
                    "crypto/bn/bn_exp.o",
                    "crypto/bn/bn_exp2.o",
                    "crypto/bn/bn_gcd.o",
                    "crypto/bn/bn_gf2m.o",
                    "crypto/bn/bn_intern.o",
                    "crypto/bn/bn_kron.o",
                    "crypto/bn/bn_lib.o",
                    "crypto/bn/bn_mod.o",
                    "crypto/bn/bn_mont.o",
                    "crypto/bn/bn_mpi.o",
                    "crypto/bn/bn_mul.o",
                    "crypto/bn/bn_nist.o",
                    "crypto/bn/bn_prime.o",
                    "crypto/bn/bn_print.o",
                    "crypto/bn/bn_rand.o",
                    "crypto/bn/bn_recp.o",
                    "crypto/bn/bn_shift.o",
                    "crypto/bn/bn_sqr.o",
                    "crypto/bn/bn_sqrt.o",
                    "crypto/bn/bn_srp.o",
                    "crypto/bn/bn_word.o",
                    "crypto/bn/bn_x931p.o",
                    "crypto/buffer/buf_err.o",
                    "crypto/buffer/buffer.o",
                    "crypto/camellia/camellia.o",
                    "crypto/camellia/cmll_cbc.o",
                    "crypto/camellia/cmll_cfb.o",
                    "crypto/camellia/cmll_ctr.o",
                    "crypto/camellia/cmll_ecb.o",
                    "crypto/camellia/cmll_misc.o",
                    "crypto/camellia/cmll_ofb.o",
                    "crypto/cast/c_cfb64.o",
                    "crypto/cast/c_ecb.o",
                    "crypto/cast/c_enc.o",
                    "crypto/cast/c_ofb64.o",
                    "crypto/cast/c_skey.o",
                    "crypto/chacha/chacha_enc.o",
                    "crypto/cmac/cm_ameth.o",
                    "crypto/cmac/cm_pmeth.o",
                    "crypto/cmac/cmac.o",
                    "crypto/cms/cms_asn1.o",
                    "crypto/cms/cms_att.o",
                    "crypto/cms/cms_cd.o",
                    "crypto/cms/cms_dd.o",
                    "crypto/cms/cms_enc.o",
                    "crypto/cms/cms_env.o",
                    "crypto/cms/cms_err.o",
                    "crypto/cms/cms_ess.o",
                    "crypto/cms/cms_io.o",
                    "crypto/cms/cms_kari.o",
                    "crypto/cms/cms_lib.o",
                    "crypto/cms/cms_pwri.o",
                    "crypto/cms/cms_sd.o",
                    "crypto/cms/cms_smime.o",
                    "crypto/comp/c_zlib.o",
                    "crypto/comp/comp_err.o",
                    "crypto/comp/comp_lib.o",
                    "crypto/conf/conf_api.o",
                    "crypto/conf/conf_def.o",
                    "crypto/conf/conf_err.o",
                    "crypto/conf/conf_lib.o",
                    "crypto/conf/conf_mall.o",
                    "crypto/conf/conf_mod.o",
                    "crypto/conf/conf_sap.o",
                    "crypto/conf/conf_ssl.o",
                    "crypto/cpt_err.o",
                    "crypto/cryptlib.o",
                    "crypto/ct/ct_b64.o",
                    "crypto/ct/ct_err.o",
                    "crypto/ct/ct_log.o",
                    "crypto/ct/ct_oct.o",
                    "crypto/ct/ct_policy.o",
                    "crypto/ct/ct_prn.o",
                    "crypto/ct/ct_sct.o",
                    "crypto/ct/ct_sct_ctx.o",
                    "crypto/ct/ct_vfy.o",
                    "crypto/ct/ct_x509v3.o",
                    "crypto/ctype.o",
                    "crypto/cversion.o",
                    "crypto/des/cbc_cksm.o",
                    "crypto/des/cbc_enc.o",
                    "crypto/des/cfb64ede.o",
                    "crypto/des/cfb64enc.o",
                    "crypto/des/cfb_enc.o",
                    "crypto/des/des_enc.o",
                    "crypto/des/ecb3_enc.o",
                    "crypto/des/ecb_enc.o",
                    "crypto/des/fcrypt.o",
                    "crypto/des/fcrypt_b.o",
                    "crypto/des/ofb64ede.o",
                    "crypto/des/ofb64enc.o",
                    "crypto/des/ofb_enc.o",
                    "crypto/des/pcbc_enc.o",
                    "crypto/des/qud_cksm.o",
                    "crypto/des/rand_key.o",
                    "crypto/des/set_key.o",
                    "crypto/des/str2key.o",
                    "crypto/des/xcbc_enc.o",
                    "crypto/dh/dh_ameth.o",
                    "crypto/dh/dh_asn1.o",
                    "crypto/dh/dh_check.o",
                    "crypto/dh/dh_depr.o",
                    "crypto/dh/dh_err.o",
                    "crypto/dh/dh_gen.o",
                    "crypto/dh/dh_kdf.o",
                    "crypto/dh/dh_key.o",
                    "crypto/dh/dh_lib.o",
                    "crypto/dh/dh_meth.o",
                    "crypto/dh/dh_pmeth.o",
                    "crypto/dh/dh_prn.o",
                    "crypto/dh/dh_rfc5114.o",
                    "crypto/dh/dh_rfc7919.o",
                    "crypto/dsa/dsa_ameth.o",
                    "crypto/dsa/dsa_asn1.o",
                    "crypto/dsa/dsa_depr.o",
                    "crypto/dsa/dsa_err.o",
                    "crypto/dsa/dsa_gen.o",
                    "crypto/dsa/dsa_key.o",
                    "crypto/dsa/dsa_lib.o",
                    "crypto/dsa/dsa_meth.o",
                    "crypto/dsa/dsa_ossl.o",
                    "crypto/dsa/dsa_pmeth.o",
                    "crypto/dsa/dsa_prn.o",
                    "crypto/dsa/dsa_sign.o",
                    "crypto/dsa/dsa_vrf.o",
                    "crypto/dso/dso_dl.o",
                    "crypto/dso/dso_dlfcn.o",
                    "crypto/dso/dso_err.o",
                    "crypto/dso/dso_lib.o",
                    "crypto/dso/dso_openssl.o",
                    "crypto/dso/dso_vms.o",
                    "crypto/dso/dso_win32.o",
                    "crypto/ebcdic.o",
                    "crypto/ec/curve25519.o",
                    "crypto/ec/curve448/arch_32/f_impl.o",
                    "crypto/ec/curve448/curve448.o",
                    "crypto/ec/curve448/curve448_tables.o",
                    "crypto/ec/curve448/eddsa.o",
                    "crypto/ec/curve448/f_generic.o",
                    "crypto/ec/curve448/scalar.o",
                    "crypto/ec/ec2_oct.o",
                    "crypto/ec/ec2_smpl.o",
                    "crypto/ec/ec_ameth.o",
                    "crypto/ec/ec_asn1.o",
                    "crypto/ec/ec_check.o",
                    "crypto/ec/ec_curve.o",
                    "crypto/ec/ec_cvt.o",
                    "crypto/ec/ec_err.o",
                    "crypto/ec/ec_key.o",
                    "crypto/ec/ec_kmeth.o",
                    "crypto/ec/ec_lib.o",
                    "crypto/ec/ec_mult.o",
                    "crypto/ec/ec_oct.o",
                    "crypto/ec/ec_pmeth.o",
                    "crypto/ec/ec_print.o",
                    "crypto/ec/ecdh_kdf.o",
                    "crypto/ec/ecdh_ossl.o",
                    "crypto/ec/ecdsa_ossl.o",
                    "crypto/ec/ecdsa_sign.o",
                    "crypto/ec/ecdsa_vrf.o",
                    "crypto/ec/eck_prn.o",
                    "crypto/ec/ecp_mont.o",
                    "crypto/ec/ecp_nist.o",
                    "crypto/ec/ecp_nistp224.o",
                    "crypto/ec/ecp_nistp256.o",
                    "crypto/ec/ecp_nistp521.o",
                    "crypto/ec/ecp_nistputil.o",
                    "crypto/ec/ecp_oct.o",
                    "crypto/ec/ecp_smpl.o",
                    "crypto/ec/ecx_meth.o",
                    "crypto/err/err.o",
                    "crypto/err/err_all.o",
                    "crypto/err/err_prn.o",
                    "crypto/evp/bio_b64.o",
                    "crypto/evp/bio_enc.o",
                    "crypto/evp/bio_md.o",
                    "crypto/evp/bio_ok.o",
                    "crypto/evp/c_allc.o",
                    "crypto/evp/c_alld.o",
                    "crypto/evp/cmeth_lib.o",
                    "crypto/evp/digest.o",
                    "crypto/evp/e_aes.o",
                    "crypto/evp/e_aes_cbc_hmac_sha1.o",
                    "crypto/evp/e_aes_cbc_hmac_sha256.o",
                    "crypto/evp/e_aria.o",
                    "crypto/evp/e_bf.o",
                    "crypto/evp/e_camellia.o",
                    "crypto/evp/e_cast.o",
                    "crypto/evp/e_chacha20_poly1305.o",
                    "crypto/evp/e_des.o",
                    "crypto/evp/e_des3.o",
                    "crypto/evp/e_idea.o",
                    "crypto/evp/e_null.o",
                    "crypto/evp/e_old.o",
                    "crypto/evp/e_rc2.o",
                    "crypto/evp/e_rc4.o",
                    "crypto/evp/e_rc4_hmac_md5.o",
                    "crypto/evp/e_rc5.o",
                    "crypto/evp/e_seed.o",
                    "crypto/evp/e_sm4.o",
                    "crypto/evp/e_xcbc_d.o",
                    "crypto/evp/encode.o",
                    "crypto/evp/evp_cnf.o",
                    "crypto/evp/evp_enc.o",
                    "crypto/evp/evp_err.o",
                    "crypto/evp/evp_key.o",
                    "crypto/evp/evp_lib.o",
                    "crypto/evp/evp_pbe.o",
                    "crypto/evp/evp_pkey.o",
                    "crypto/evp/m_md2.o",
                    "crypto/evp/m_md4.o",
                    "crypto/evp/m_md5.o",
                    "crypto/evp/m_md5_sha1.o",
                    "crypto/evp/m_mdc2.o",
                    "crypto/evp/m_null.o",
                    "crypto/evp/m_ripemd.o",
                    "crypto/evp/m_sha1.o",
                    "crypto/evp/m_sha3.o",
                    "crypto/evp/m_sigver.o",
                    "crypto/evp/m_wp.o",
                    "crypto/evp/names.o",
                    "crypto/evp/p5_crpt.o",
                    "crypto/evp/p5_crpt2.o",
                    "crypto/evp/p_dec.o",
                    "crypto/evp/p_enc.o",
                    "crypto/evp/p_lib.o",
                    "crypto/evp/p_open.o",
                    "crypto/evp/p_seal.o",
                    "crypto/evp/p_sign.o",
                    "crypto/evp/p_verify.o",
                    "crypto/evp/pbe_scrypt.o",
                    "crypto/evp/pmeth_fn.o",
                    "crypto/evp/pmeth_gn.o",
                    "crypto/evp/pmeth_lib.o",
                    "crypto/ex_data.o",
                    "crypto/getenv.o",
                    "crypto/hmac/hm_ameth.o",
                    "crypto/hmac/hm_pmeth.o",
                    "crypto/hmac/hmac.o",
                    "crypto/idea/i_cbc.o",
                    "crypto/idea/i_cfb64.o",
                    "crypto/idea/i_ecb.o",
                    "crypto/idea/i_ofb64.o",
                    "crypto/idea/i_skey.o",
                    "crypto/init.o",
                    "crypto/kdf/hkdf.o",
                    "crypto/kdf/kdf_err.o",
                    "crypto/kdf/scrypt.o",
                    "crypto/kdf/tls1_prf.o",
                    "crypto/lhash/lh_stats.o",
                    "crypto/lhash/lhash.o",
                    "crypto/md4/md4_dgst.o",
                    "crypto/md4/md4_one.o",
                    "crypto/md5/md5_dgst.o",
                    "crypto/md5/md5_one.o",
                    "crypto/mdc2/mdc2_one.o",
                    "crypto/mdc2/mdc2dgst.o",
                    "crypto/mem.o",
                    "crypto/mem_clr.o",
                    "crypto/mem_dbg.o",
                    "crypto/mem_sec.o",
                    "crypto/modes/cbc128.o",
                    "crypto/modes/ccm128.o",
                    "crypto/modes/cfb128.o",
                    "crypto/modes/ctr128.o",
                    "crypto/modes/cts128.o",
                    "crypto/modes/gcm128.o",
                    "crypto/modes/ocb128.o",
                    "crypto/modes/ofb128.o",
                    "crypto/modes/wrap128.o",
                    "crypto/modes/xts128.o",
                    "crypto/o_dir.o",
                    "crypto/o_fips.o",
                    "crypto/o_fopen.o",
                    "crypto/o_init.o",
                    "crypto/o_str.o",
                    "crypto/o_time.o",
                    "crypto/objects/o_names.o",
                    "crypto/objects/obj_dat.o",
                    "crypto/objects/obj_err.o",
                    "crypto/objects/obj_lib.o",
                    "crypto/objects/obj_xref.o",
                    "crypto/ocsp/ocsp_asn.o",
                    "crypto/ocsp/ocsp_cl.o",
                    "crypto/ocsp/ocsp_err.o",
                    "crypto/ocsp/ocsp_ext.o",
                    "crypto/ocsp/ocsp_ht.o",
                    "crypto/ocsp/ocsp_lib.o",
                    "crypto/ocsp/ocsp_prn.o",
                    "crypto/ocsp/ocsp_srv.o",
                    "crypto/ocsp/ocsp_vfy.o",
                    "crypto/ocsp/v3_ocsp.o",
                    "crypto/pem/pem_all.o",
                    "crypto/pem/pem_err.o",
                    "crypto/pem/pem_info.o",
                    "crypto/pem/pem_lib.o",
                    "crypto/pem/pem_oth.o",
                    "crypto/pem/pem_pk8.o",
                    "crypto/pem/pem_pkey.o",
                    "crypto/pem/pem_sign.o",
                    "crypto/pem/pem_x509.o",
                    "crypto/pem/pem_xaux.o",
                    "crypto/pem/pvkfmt.o",
                    "crypto/pkcs12/p12_add.o",
                    "crypto/pkcs12/p12_asn.o",
                    "crypto/pkcs12/p12_attr.o",
                    "crypto/pkcs12/p12_crpt.o",
                    "crypto/pkcs12/p12_crt.o",
                    "crypto/pkcs12/p12_decr.o",
                    "crypto/pkcs12/p12_init.o",
                    "crypto/pkcs12/p12_key.o",
                    "crypto/pkcs12/p12_kiss.o",
                    "crypto/pkcs12/p12_mutl.o",
                    "crypto/pkcs12/p12_npas.o",
                    "crypto/pkcs12/p12_p8d.o",
                    "crypto/pkcs12/p12_p8e.o",
                    "crypto/pkcs12/p12_sbag.o",
                    "crypto/pkcs12/p12_utl.o",
                    "crypto/pkcs12/pk12err.o",
                    "crypto/pkcs7/bio_pk7.o",
                    "crypto/pkcs7/pk7_asn1.o",
                    "crypto/pkcs7/pk7_attr.o",
                    "crypto/pkcs7/pk7_doit.o",
                    "crypto/pkcs7/pk7_lib.o",
                    "crypto/pkcs7/pk7_mime.o",
                    "crypto/pkcs7/pk7_smime.o",
                    "crypto/pkcs7/pkcs7err.o",
                    "crypto/poly1305/poly1305.o",
                    "crypto/poly1305/poly1305_ameth.o",
                    "crypto/poly1305/poly1305_pmeth.o",
                    "crypto/rand/drbg_ctr.o",
                    "crypto/rand/drbg_lib.o",
                    "crypto/rand/rand_egd.o",
                    "crypto/rand/rand_err.o",
                    "crypto/rand/rand_lib.o",
                    "crypto/rand/rand_unix.o",
                    "crypto/rand/rand_vms.o",
                    "crypto/rand/rand_win.o",
                    "crypto/rand/randfile.o",
                    "crypto/rc2/rc2_cbc.o",
                    "crypto/rc2/rc2_ecb.o",
                    "crypto/rc2/rc2_skey.o",
                    "crypto/rc2/rc2cfb64.o",
                    "crypto/rc2/rc2ofb64.o",
                    "crypto/rc4/rc4_enc.o",
                    "crypto/rc4/rc4_skey.o",
                    "crypto/ripemd/rmd_dgst.o",
                    "crypto/ripemd/rmd_one.o",
                    "crypto/rsa/rsa_ameth.o",
                    "crypto/rsa/rsa_asn1.o",
                    "crypto/rsa/rsa_chk.o",
                    "crypto/rsa/rsa_crpt.o",
                    "crypto/rsa/rsa_depr.o",
                    "crypto/rsa/rsa_err.o",
                    "crypto/rsa/rsa_gen.o",
                    "crypto/rsa/rsa_lib.o",
                    "crypto/rsa/rsa_meth.o",
                    "crypto/rsa/rsa_mp.o",
                    "crypto/rsa/rsa_none.o",
                    "crypto/rsa/rsa_oaep.o",
                    "crypto/rsa/rsa_ossl.o",
                    "crypto/rsa/rsa_pk1.o",
                    "crypto/rsa/rsa_pmeth.o",
                    "crypto/rsa/rsa_prn.o",
                    "crypto/rsa/rsa_pss.o",
                    "crypto/rsa/rsa_saos.o",
                    "crypto/rsa/rsa_sign.o",
                    "crypto/rsa/rsa_ssl.o",
                    "crypto/rsa/rsa_x931.o",
                    "crypto/rsa/rsa_x931g.o",
                    "crypto/seed/seed.o",
                    "crypto/seed/seed_cbc.o",
                    "crypto/seed/seed_cfb.o",
                    "crypto/seed/seed_ecb.o",
                    "crypto/seed/seed_ofb.o",
                    "crypto/sha/keccak1600.o",
                    "crypto/sha/sha1_one.o",
                    "crypto/sha/sha1dgst.o",
                    "crypto/sha/sha256.o",
                    "crypto/sha/sha512.o",
                    "crypto/siphash/siphash.o",
                    "crypto/siphash/siphash_ameth.o",
                    "crypto/siphash/siphash_pmeth.o",
                    "crypto/sm2/sm2_crypt.o",
                    "crypto/sm2/sm2_err.o",
                    "crypto/sm2/sm2_pmeth.o",
                    "crypto/sm2/sm2_sign.o",
                    "crypto/sm3/m_sm3.o",
                    "crypto/sm3/sm3.o",
                    "crypto/sm4/sm4.o",
                    "crypto/srp/srp_lib.o",
                    "crypto/srp/srp_vfy.o",
                    "crypto/stack/stack.o",
                    "crypto/store/loader_file.o",
                    "crypto/store/store_err.o",
                    "crypto/store/store_init.o",
                    "crypto/store/store_lib.o",
                    "crypto/store/store_register.o",
                    "crypto/store/store_strings.o",
                    "crypto/threads_none.o",
                    "crypto/threads_pthread.o",
                    "crypto/threads_win.o",
                    "crypto/ts/ts_asn1.o",
                    "crypto/ts/ts_conf.o",
                    "crypto/ts/ts_err.o",
                    "crypto/ts/ts_lib.o",
                    "crypto/ts/ts_req_print.o",
                    "crypto/ts/ts_req_utils.o",
                    "crypto/ts/ts_rsp_print.o",
                    "crypto/ts/ts_rsp_sign.o",
                    "crypto/ts/ts_rsp_utils.o",
                    "crypto/ts/ts_rsp_verify.o",
                    "crypto/ts/ts_verify_ctx.o",
                    "crypto/txt_db/txt_db.o",
                    "crypto/ui/ui_err.o",
                    "crypto/ui/ui_lib.o",
                    "crypto/ui/ui_null.o",
                    "crypto/ui/ui_openssl.o",
                    "crypto/ui/ui_util.o",
                    "crypto/uid.o",
                    "crypto/whrlpool/wp_block.o",
                    "crypto/whrlpool/wp_dgst.o",
                    "crypto/x509/by_dir.o",
                    "crypto/x509/by_file.o",
                    "crypto/x509/t_crl.o",
                    "crypto/x509/t_req.o",
                    "crypto/x509/t_x509.o",
                    "crypto/x509/x509_att.o",
                    "crypto/x509/x509_cmp.o",
                    "crypto/x509/x509_d2.o",
                    "crypto/x509/x509_def.o",
                    "crypto/x509/x509_err.o",
                    "crypto/x509/x509_ext.o",
                    "crypto/x509/x509_lu.o",
                    "crypto/x509/x509_meth.o",
                    "crypto/x509/x509_obj.o",
                    "crypto/x509/x509_r2x.o",
                    "crypto/x509/x509_req.o",
                    "crypto/x509/x509_set.o",
                    "crypto/x509/x509_trs.o",
                    "crypto/x509/x509_txt.o",
                    "crypto/x509/x509_v3.o",
                    "crypto/x509/x509_vfy.o",
                    "crypto/x509/x509_vpm.o",
                    "crypto/x509/x509cset.o",
                    "crypto/x509/x509name.o",
                    "crypto/x509/x509rset.o",
                    "crypto/x509/x509spki.o",
                    "crypto/x509/x509type.o",
                    "crypto/x509/x_all.o",
                    "crypto/x509/x_attrib.o",
                    "crypto/x509/x_crl.o",
                    "crypto/x509/x_exten.o",
                    "crypto/x509/x_name.o",
                    "crypto/x509/x_pubkey.o",
                    "crypto/x509/x_req.o",
                    "crypto/x509/x_x509.o",
                    "crypto/x509/x_x509a.o",
                    "crypto/x509v3/pcy_cache.o",
                    "crypto/x509v3/pcy_data.o",
                    "crypto/x509v3/pcy_lib.o",
                    "crypto/x509v3/pcy_map.o",
                    "crypto/x509v3/pcy_node.o",
                    "crypto/x509v3/pcy_tree.o",
                    "crypto/x509v3/v3_addr.o",
                    "crypto/x509v3/v3_admis.o",
                    "crypto/x509v3/v3_akey.o",
                    "crypto/x509v3/v3_akeya.o",
                    "crypto/x509v3/v3_alt.o",
                    "crypto/x509v3/v3_asid.o",
                    "crypto/x509v3/v3_bcons.o",
                    "crypto/x509v3/v3_bitst.o",
                    "crypto/x509v3/v3_conf.o",
                    "crypto/x509v3/v3_cpols.o",
                    "crypto/x509v3/v3_crld.o",
                    "crypto/x509v3/v3_enum.o",
                    "crypto/x509v3/v3_extku.o",
                    "crypto/x509v3/v3_genn.o",
                    "crypto/x509v3/v3_ia5.o",
                    "crypto/x509v3/v3_info.o",
                    "crypto/x509v3/v3_int.o",
                    "crypto/x509v3/v3_lib.o",
                    "crypto/x509v3/v3_ncons.o",
                    "crypto/x509v3/v3_pci.o",
                    "crypto/x509v3/v3_pcia.o",
                    "crypto/x509v3/v3_pcons.o",
                    "crypto/x509v3/v3_pku.o",
                    "crypto/x509v3/v3_pmaps.o",
                    "crypto/x509v3/v3_prn.o",
                    "crypto/x509v3/v3_purp.o",
                    "crypto/x509v3/v3_skey.o",
                    "crypto/x509v3/v3_sxnet.o",
                    "crypto/x509v3/v3_tlsf.o",
                    "crypto/x509v3/v3_utl.o",
                    "crypto/x509v3/v3err.o",
                ],
            "libssl" =>
                [
                    "ssl/bio_ssl.o",
                    "ssl/d1_lib.o",
                    "ssl/d1_msg.o",
                    "ssl/d1_srtp.o",
                    "ssl/methods.o",
                    "ssl/packet.o",
                    "ssl/pqueue.o",
                    "ssl/record/dtls1_bitmap.o",
                    "ssl/record/rec_layer_d1.o",
                    "ssl/record/rec_layer_s3.o",
                    "ssl/record/ssl3_buffer.o",
                    "ssl/record/ssl3_record.o",
                    "ssl/record/ssl3_record_tls13.o",
                    "ssl/s3_cbc.o",
                    "ssl/s3_enc.o",
                    "ssl/s3_lib.o",
                    "ssl/s3_msg.o",
                    "ssl/ssl_asn1.o",
                    "ssl/ssl_cert.o",
                    "ssl/ssl_ciph.o",
                    "ssl/ssl_conf.o",
                    "ssl/ssl_err.o",
                    "ssl/ssl_init.o",
                    "ssl/ssl_lib.o",
                    "ssl/ssl_mcnf.o",
                    "ssl/ssl_rsa.o",
                    "ssl/ssl_sess.o",
                    "ssl/ssl_stat.o",
                    "ssl/ssl_txt.o",
                    "ssl/ssl_utst.o",
                    "ssl/statem/extensions.o",
                    "ssl/statem/extensions_clnt.o",
                    "ssl/statem/extensions_cust.o",
                    "ssl/statem/extensions_srvr.o",
                    "ssl/statem/statem.o",
                    "ssl/statem/statem_clnt.o",
                    "ssl/statem/statem_dtls.o",
                    "ssl/statem/statem_lib.o",
                    "ssl/statem/statem_srvr.o",
                    "ssl/t1_enc.o",
                    "ssl/t1_lib.o",
                    "ssl/t1_trce.o",
                    "ssl/tls13_enc.o",
                    "ssl/tls_srp.o",
                ],
            "ssl/bio_ssl.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/bio_ssl.c",
                ],
            "ssl/d1_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/d1_lib.c",
                ],
            "ssl/d1_msg.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/d1_msg.c",
                ],
            "ssl/d1_srtp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/d1_srtp.c",
                ],
            "ssl/methods.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/methods.c",
                ],
            "ssl/packet.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/packet.c",
                ],
            "ssl/pqueue.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/pqueue.c",
                ],
            "ssl/record/dtls1_bitmap.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/record/dtls1_bitmap.c",
                ],
            "ssl/record/rec_layer_d1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/record/rec_layer_d1.c",
                ],
            "ssl/record/rec_layer_s3.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/record/rec_layer_s3.c",
                ],
            "ssl/record/ssl3_buffer.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/record/ssl3_buffer.c",
                ],
            "ssl/record/ssl3_record.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/record/ssl3_record.c",
                ],
            "ssl/record/ssl3_record_tls13.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/record/ssl3_record_tls13.c",
                ],
            "ssl/s3_cbc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/s3_cbc.c",
                ],
            "ssl/s3_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/s3_enc.c",
                ],
            "ssl/s3_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/s3_lib.c",
                ],
            "ssl/s3_msg.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/s3_msg.c",
                ],
            "ssl/ssl_asn1.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_asn1.c",
                ],
            "ssl/ssl_cert.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_cert.c",
                ],
            "ssl/ssl_ciph.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_ciph.c",
                ],
            "ssl/ssl_conf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_conf.c",
                ],
            "ssl/ssl_err.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_err.c",
                ],
            "ssl/ssl_init.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_init.c",
                ],
            "ssl/ssl_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_lib.c",
                ],
            "ssl/ssl_mcnf.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_mcnf.c",
                ],
            "ssl/ssl_rsa.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_rsa.c",
                ],
            "ssl/ssl_sess.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_sess.c",
                ],
            "ssl/ssl_stat.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_stat.c",
                ],
            "ssl/ssl_txt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_txt.c",
                ],
            "ssl/ssl_utst.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/ssl_utst.c",
                ],
            "ssl/statem/extensions.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/statem/extensions.c",
                ],
            "ssl/statem/extensions_clnt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/statem/extensions_clnt.c",
                ],
            "ssl/statem/extensions_cust.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/statem/extensions_cust.c",
                ],
            "ssl/statem/extensions_srvr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/statem/extensions_srvr.c",
                ],
            "ssl/statem/statem.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/statem/statem.c",
                ],
            "ssl/statem/statem_clnt.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/statem/statem_clnt.c",
                ],
            "ssl/statem/statem_dtls.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/statem/statem_dtls.c",
                ],
            "ssl/statem/statem_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/statem/statem_lib.c",
                ],
            "ssl/statem/statem_srvr.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/statem/statem_srvr.c",
                ],
            "ssl/t1_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/t1_enc.c",
                ],
            "ssl/t1_lib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/t1_lib.c",
                ],
            "ssl/t1_trce.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/t1_trce.c",
                ],
            "ssl/tls13_enc.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/tls13_enc.c",
                ],
            "ssl/tls_srp.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/ssl/tls_srp.c",
                ],
            "test/aborttest" =>
                [
                    "test/aborttest.o",
                ],
            "test/aborttest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/aborttest.c",
                ],
            "test/afalgtest" =>
                [
                    "test/afalgtest.o",
                ],
            "test/afalgtest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/afalgtest.c",
                ],
            "test/asn1_decode_test" =>
                [
                    "test/asn1_decode_test.o",
                ],
            "test/asn1_decode_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/asn1_decode_test.c",
                ],
            "test/asn1_encode_test" =>
                [
                    "test/asn1_encode_test.o",
                ],
            "test/asn1_encode_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/asn1_encode_test.c",
                ],
            "test/asn1_internal_test" =>
                [
                    "test/asn1_internal_test.o",
                ],
            "test/asn1_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/asn1_internal_test.c",
                ],
            "test/asn1_string_table_test" =>
                [
                    "test/asn1_string_table_test.o",
                ],
            "test/asn1_string_table_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/asn1_string_table_test.c",
                ],
            "test/asn1_time_test" =>
                [
                    "test/asn1_time_test.o",
                ],
            "test/asn1_time_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/asn1_time_test.c",
                ],
            "test/asynciotest" =>
                [
                    "test/asynciotest.o",
                    "test/ssltestlib.o",
                ],
            "test/asynciotest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/asynciotest.c",
                ],
            "test/asynctest" =>
                [
                    "test/asynctest.o",
                ],
            "test/asynctest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/asynctest.c",
                ],
            "test/bad_dtls_test" =>
                [
                    "test/bad_dtls_test.o",
                ],
            "test/bad_dtls_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/bad_dtls_test.c",
                ],
            "test/bftest" =>
                [
                    "test/bftest.o",
                ],
            "test/bftest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/bftest.c",
                ],
            "test/bio_callback_test" =>
                [
                    "test/bio_callback_test.o",
                ],
            "test/bio_callback_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/bio_callback_test.c",
                ],
            "test/bio_enc_test" =>
                [
                    "test/bio_enc_test.o",
                ],
            "test/bio_enc_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/bio_enc_test.c",
                ],
            "test/bio_memleak_test" =>
                [
                    "test/bio_memleak_test.o",
                ],
            "test/bio_memleak_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/bio_memleak_test.c",
                ],
            "test/bioprinttest" =>
                [
                    "test/bioprinttest.o",
                ],
            "test/bioprinttest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/bioprinttest.c",
                ],
            "test/bntest" =>
                [
                    "test/bntest.o",
                ],
            "test/bntest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/bntest.c",
                ],
            "test/buildtest_aes.o" =>
                [
                    "test/buildtest_aes.c",
                ],
            "test/buildtest_asn1.o" =>
                [
                    "test/buildtest_asn1.c",
                ],
            "test/buildtest_asn1t.o" =>
                [
                    "test/buildtest_asn1t.c",
                ],
            "test/buildtest_bio.o" =>
                [
                    "test/buildtest_bio.c",
                ],
            "test/buildtest_blowfish.o" =>
                [
                    "test/buildtest_blowfish.c",
                ],
            "test/buildtest_bn.o" =>
                [
                    "test/buildtest_bn.c",
                ],
            "test/buildtest_buffer.o" =>
                [
                    "test/buildtest_buffer.c",
                ],
            "test/buildtest_c_aes" =>
                [
                    "test/buildtest_aes.o",
                ],
            "test/buildtest_c_asn1" =>
                [
                    "test/buildtest_asn1.o",
                ],
            "test/buildtest_c_asn1t" =>
                [
                    "test/buildtest_asn1t.o",
                ],
            "test/buildtest_c_bio" =>
                [
                    "test/buildtest_bio.o",
                ],
            "test/buildtest_c_blowfish" =>
                [
                    "test/buildtest_blowfish.o",
                ],
            "test/buildtest_c_bn" =>
                [
                    "test/buildtest_bn.o",
                ],
            "test/buildtest_c_buffer" =>
                [
                    "test/buildtest_buffer.o",
                ],
            "test/buildtest_c_camellia" =>
                [
                    "test/buildtest_camellia.o",
                ],
            "test/buildtest_c_cast" =>
                [
                    "test/buildtest_cast.o",
                ],
            "test/buildtest_c_cmac" =>
                [
                    "test/buildtest_cmac.o",
                ],
            "test/buildtest_c_cms" =>
                [
                    "test/buildtest_cms.o",
                ],
            "test/buildtest_c_comp" =>
                [
                    "test/buildtest_comp.o",
                ],
            "test/buildtest_c_conf" =>
                [
                    "test/buildtest_conf.o",
                ],
            "test/buildtest_c_conf_api" =>
                [
                    "test/buildtest_conf_api.o",
                ],
            "test/buildtest_c_crypto" =>
                [
                    "test/buildtest_crypto.o",
                ],
            "test/buildtest_c_ct" =>
                [
                    "test/buildtest_ct.o",
                ],
            "test/buildtest_c_des" =>
                [
                    "test/buildtest_des.o",
                ],
            "test/buildtest_c_dh" =>
                [
                    "test/buildtest_dh.o",
                ],
            "test/buildtest_c_dsa" =>
                [
                    "test/buildtest_dsa.o",
                ],
            "test/buildtest_c_dtls1" =>
                [
                    "test/buildtest_dtls1.o",
                ],
            "test/buildtest_c_e_os2" =>
                [
                    "test/buildtest_e_os2.o",
                ],
            "test/buildtest_c_ebcdic" =>
                [
                    "test/buildtest_ebcdic.o",
                ],
            "test/buildtest_c_ec" =>
                [
                    "test/buildtest_ec.o",
                ],
            "test/buildtest_c_ecdh" =>
                [
                    "test/buildtest_ecdh.o",
                ],
            "test/buildtest_c_ecdsa" =>
                [
                    "test/buildtest_ecdsa.o",
                ],
            "test/buildtest_c_evp" =>
                [
                    "test/buildtest_evp.o",
                ],
            "test/buildtest_c_hmac" =>
                [
                    "test/buildtest_hmac.o",
                ],
            "test/buildtest_c_idea" =>
                [
                    "test/buildtest_idea.o",
                ],
            "test/buildtest_c_kdf" =>
                [
                    "test/buildtest_kdf.o",
                ],
            "test/buildtest_c_lhash" =>
                [
                    "test/buildtest_lhash.o",
                ],
            "test/buildtest_c_md4" =>
                [
                    "test/buildtest_md4.o",
                ],
            "test/buildtest_c_md5" =>
                [
                    "test/buildtest_md5.o",
                ],
            "test/buildtest_c_mdc2" =>
                [
                    "test/buildtest_mdc2.o",
                ],
            "test/buildtest_c_modes" =>
                [
                    "test/buildtest_modes.o",
                ],
            "test/buildtest_c_obj_mac" =>
                [
                    "test/buildtest_obj_mac.o",
                ],
            "test/buildtest_c_objects" =>
                [
                    "test/buildtest_objects.o",
                ],
            "test/buildtest_c_ocsp" =>
                [
                    "test/buildtest_ocsp.o",
                ],
            "test/buildtest_c_opensslv" =>
                [
                    "test/buildtest_opensslv.o",
                ],
            "test/buildtest_c_ossl_typ" =>
                [
                    "test/buildtest_ossl_typ.o",
                ],
            "test/buildtest_c_pem" =>
                [
                    "test/buildtest_pem.o",
                ],
            "test/buildtest_c_pem2" =>
                [
                    "test/buildtest_pem2.o",
                ],
            "test/buildtest_c_pkcs12" =>
                [
                    "test/buildtest_pkcs12.o",
                ],
            "test/buildtest_c_pkcs7" =>
                [
                    "test/buildtest_pkcs7.o",
                ],
            "test/buildtest_c_rand" =>
                [
                    "test/buildtest_rand.o",
                ],
            "test/buildtest_c_rand_drbg" =>
                [
                    "test/buildtest_rand_drbg.o",
                ],
            "test/buildtest_c_rc2" =>
                [
                    "test/buildtest_rc2.o",
                ],
            "test/buildtest_c_rc4" =>
                [
                    "test/buildtest_rc4.o",
                ],
            "test/buildtest_c_ripemd" =>
                [
                    "test/buildtest_ripemd.o",
                ],
            "test/buildtest_c_rsa" =>
                [
                    "test/buildtest_rsa.o",
                ],
            "test/buildtest_c_safestack" =>
                [
                    "test/buildtest_safestack.o",
                ],
            "test/buildtest_c_seed" =>
                [
                    "test/buildtest_seed.o",
                ],
            "test/buildtest_c_sha" =>
                [
                    "test/buildtest_sha.o",
                ],
            "test/buildtest_c_srp" =>
                [
                    "test/buildtest_srp.o",
                ],
            "test/buildtest_c_srtp" =>
                [
                    "test/buildtest_srtp.o",
                ],
            "test/buildtest_c_ssl" =>
                [
                    "test/buildtest_ssl.o",
                ],
            "test/buildtest_c_ssl2" =>
                [
                    "test/buildtest_ssl2.o",
                ],
            "test/buildtest_c_stack" =>
                [
                    "test/buildtest_stack.o",
                ],
            "test/buildtest_c_store" =>
                [
                    "test/buildtest_store.o",
                ],
            "test/buildtest_c_symhacks" =>
                [
                    "test/buildtest_symhacks.o",
                ],
            "test/buildtest_c_tls1" =>
                [
                    "test/buildtest_tls1.o",
                ],
            "test/buildtest_c_ts" =>
                [
                    "test/buildtest_ts.o",
                ],
            "test/buildtest_c_txt_db" =>
                [
                    "test/buildtest_txt_db.o",
                ],
            "test/buildtest_c_ui" =>
                [
                    "test/buildtest_ui.o",
                ],
            "test/buildtest_c_whrlpool" =>
                [
                    "test/buildtest_whrlpool.o",
                ],
            "test/buildtest_c_x509" =>
                [
                    "test/buildtest_x509.o",
                ],
            "test/buildtest_c_x509_vfy" =>
                [
                    "test/buildtest_x509_vfy.o",
                ],
            "test/buildtest_c_x509v3" =>
                [
                    "test/buildtest_x509v3.o",
                ],
            "test/buildtest_camellia.o" =>
                [
                    "test/buildtest_camellia.c",
                ],
            "test/buildtest_cast.o" =>
                [
                    "test/buildtest_cast.c",
                ],
            "test/buildtest_cmac.o" =>
                [
                    "test/buildtest_cmac.c",
                ],
            "test/buildtest_cms.o" =>
                [
                    "test/buildtest_cms.c",
                ],
            "test/buildtest_comp.o" =>
                [
                    "test/buildtest_comp.c",
                ],
            "test/buildtest_conf.o" =>
                [
                    "test/buildtest_conf.c",
                ],
            "test/buildtest_conf_api.o" =>
                [
                    "test/buildtest_conf_api.c",
                ],
            "test/buildtest_crypto.o" =>
                [
                    "test/buildtest_crypto.c",
                ],
            "test/buildtest_ct.o" =>
                [
                    "test/buildtest_ct.c",
                ],
            "test/buildtest_des.o" =>
                [
                    "test/buildtest_des.c",
                ],
            "test/buildtest_dh.o" =>
                [
                    "test/buildtest_dh.c",
                ],
            "test/buildtest_dsa.o" =>
                [
                    "test/buildtest_dsa.c",
                ],
            "test/buildtest_dtls1.o" =>
                [
                    "test/buildtest_dtls1.c",
                ],
            "test/buildtest_e_os2.o" =>
                [
                    "test/buildtest_e_os2.c",
                ],
            "test/buildtest_ebcdic.o" =>
                [
                    "test/buildtest_ebcdic.c",
                ],
            "test/buildtest_ec.o" =>
                [
                    "test/buildtest_ec.c",
                ],
            "test/buildtest_ecdh.o" =>
                [
                    "test/buildtest_ecdh.c",
                ],
            "test/buildtest_ecdsa.o" =>
                [
                    "test/buildtest_ecdsa.c",
                ],
            "test/buildtest_evp.o" =>
                [
                    "test/buildtest_evp.c",
                ],
            "test/buildtest_hmac.o" =>
                [
                    "test/buildtest_hmac.c",
                ],
            "test/buildtest_idea.o" =>
                [
                    "test/buildtest_idea.c",
                ],
            "test/buildtest_kdf.o" =>
                [
                    "test/buildtest_kdf.c",
                ],
            "test/buildtest_lhash.o" =>
                [
                    "test/buildtest_lhash.c",
                ],
            "test/buildtest_md4.o" =>
                [
                    "test/buildtest_md4.c",
                ],
            "test/buildtest_md5.o" =>
                [
                    "test/buildtest_md5.c",
                ],
            "test/buildtest_mdc2.o" =>
                [
                    "test/buildtest_mdc2.c",
                ],
            "test/buildtest_modes.o" =>
                [
                    "test/buildtest_modes.c",
                ],
            "test/buildtest_obj_mac.o" =>
                [
                    "test/buildtest_obj_mac.c",
                ],
            "test/buildtest_objects.o" =>
                [
                    "test/buildtest_objects.c",
                ],
            "test/buildtest_ocsp.o" =>
                [
                    "test/buildtest_ocsp.c",
                ],
            "test/buildtest_opensslv.o" =>
                [
                    "test/buildtest_opensslv.c",
                ],
            "test/buildtest_ossl_typ.o" =>
                [
                    "test/buildtest_ossl_typ.c",
                ],
            "test/buildtest_pem.o" =>
                [
                    "test/buildtest_pem.c",
                ],
            "test/buildtest_pem2.o" =>
                [
                    "test/buildtest_pem2.c",
                ],
            "test/buildtest_pkcs12.o" =>
                [
                    "test/buildtest_pkcs12.c",
                ],
            "test/buildtest_pkcs7.o" =>
                [
                    "test/buildtest_pkcs7.c",
                ],
            "test/buildtest_rand.o" =>
                [
                    "test/buildtest_rand.c",
                ],
            "test/buildtest_rand_drbg.o" =>
                [
                    "test/buildtest_rand_drbg.c",
                ],
            "test/buildtest_rc2.o" =>
                [
                    "test/buildtest_rc2.c",
                ],
            "test/buildtest_rc4.o" =>
                [
                    "test/buildtest_rc4.c",
                ],
            "test/buildtest_ripemd.o" =>
                [
                    "test/buildtest_ripemd.c",
                ],
            "test/buildtest_rsa.o" =>
                [
                    "test/buildtest_rsa.c",
                ],
            "test/buildtest_safestack.o" =>
                [
                    "test/buildtest_safestack.c",
                ],
            "test/buildtest_seed.o" =>
                [
                    "test/buildtest_seed.c",
                ],
            "test/buildtest_sha.o" =>
                [
                    "test/buildtest_sha.c",
                ],
            "test/buildtest_srp.o" =>
                [
                    "test/buildtest_srp.c",
                ],
            "test/buildtest_srtp.o" =>
                [
                    "test/buildtest_srtp.c",
                ],
            "test/buildtest_ssl.o" =>
                [
                    "test/buildtest_ssl.c",
                ],
            "test/buildtest_ssl2.o" =>
                [
                    "test/buildtest_ssl2.c",
                ],
            "test/buildtest_stack.o" =>
                [
                    "test/buildtest_stack.c",
                ],
            "test/buildtest_store.o" =>
                [
                    "test/buildtest_store.c",
                ],
            "test/buildtest_symhacks.o" =>
                [
                    "test/buildtest_symhacks.c",
                ],
            "test/buildtest_tls1.o" =>
                [
                    "test/buildtest_tls1.c",
                ],
            "test/buildtest_ts.o" =>
                [
                    "test/buildtest_ts.c",
                ],
            "test/buildtest_txt_db.o" =>
                [
                    "test/buildtest_txt_db.c",
                ],
            "test/buildtest_ui.o" =>
                [
                    "test/buildtest_ui.c",
                ],
            "test/buildtest_whrlpool.o" =>
                [
                    "test/buildtest_whrlpool.c",
                ],
            "test/buildtest_x509.o" =>
                [
                    "test/buildtest_x509.c",
                ],
            "test/buildtest_x509_vfy.o" =>
                [
                    "test/buildtest_x509_vfy.c",
                ],
            "test/buildtest_x509v3.o" =>
                [
                    "test/buildtest_x509v3.c",
                ],
            "test/casttest" =>
                [
                    "test/casttest.o",
                ],
            "test/casttest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/casttest.c",
                ],
            "test/chacha_internal_test" =>
                [
                    "test/chacha_internal_test.o",
                ],
            "test/chacha_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/chacha_internal_test.c",
                ],
            "test/cipherbytes_test" =>
                [
                    "test/cipherbytes_test.o",
                ],
            "test/cipherbytes_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/cipherbytes_test.c",
                ],
            "test/cipherlist_test" =>
                [
                    "test/cipherlist_test.o",
                ],
            "test/cipherlist_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/cipherlist_test.c",
                ],
            "test/ciphername_test" =>
                [
                    "test/ciphername_test.o",
                ],
            "test/ciphername_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ciphername_test.c",
                ],
            "test/clienthellotest" =>
                [
                    "test/clienthellotest.o",
                ],
            "test/clienthellotest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/clienthellotest.c",
                ],
            "test/cmsapitest" =>
                [
                    "test/cmsapitest.o",
                ],
            "test/cmsapitest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/cmsapitest.c",
                ],
            "test/conf_include_test" =>
                [
                    "test/conf_include_test.o",
                ],
            "test/conf_include_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/conf_include_test.c",
                ],
            "test/constant_time_test" =>
                [
                    "test/constant_time_test.o",
                ],
            "test/constant_time_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/constant_time_test.c",
                ],
            "test/crltest" =>
                [
                    "test/crltest.o",
                ],
            "test/crltest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/crltest.c",
                ],
            "test/ct_test" =>
                [
                    "test/ct_test.o",
                ],
            "test/ct_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ct_test.c",
                ],
            "test/ctype_internal_test" =>
                [
                    "test/ctype_internal_test.o",
                ],
            "test/ctype_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ctype_internal_test.c",
                ],
            "test/curve448_internal_test" =>
                [
                    "test/curve448_internal_test.o",
                ],
            "test/curve448_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/curve448_internal_test.c",
                ],
            "test/d2i_test" =>
                [
                    "test/d2i_test.o",
                ],
            "test/d2i_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/d2i_test.c",
                ],
            "test/danetest" =>
                [
                    "test/danetest.o",
                ],
            "test/danetest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/danetest.c",
                ],
            "test/destest" =>
                [
                    "test/destest.o",
                ],
            "test/destest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/destest.c",
                ],
            "test/dhtest" =>
                [
                    "test/dhtest.o",
                ],
            "test/dhtest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/dhtest.c",
                ],
            "test/drbg_cavs_data.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/drbg_cavs_data.c",
                ],
            "test/drbg_cavs_test" =>
                [
                    "test/drbg_cavs_data.o",
                    "test/drbg_cavs_test.o",
                ],
            "test/drbg_cavs_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/drbg_cavs_test.c",
                ],
            "test/drbgtest" =>
                [
                    "test/drbgtest.o",
                ],
            "test/drbgtest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/drbgtest.c",
                ],
            "test/dsa_no_digest_size_test" =>
                [
                    "test/dsa_no_digest_size_test.o",
                ],
            "test/dsa_no_digest_size_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/dsa_no_digest_size_test.c",
                ],
            "test/dsatest" =>
                [
                    "test/dsatest.o",
                ],
            "test/dsatest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/dsatest.c",
                ],
            "test/dtls_mtu_test" =>
                [
                    "test/dtls_mtu_test.o",
                    "test/ssltestlib.o",
                ],
            "test/dtls_mtu_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/dtls_mtu_test.c",
                ],
            "test/dtlstest" =>
                [
                    "test/dtlstest.o",
                    "test/ssltestlib.o",
                ],
            "test/dtlstest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/dtlstest.c",
                ],
            "test/dtlsv1listentest" =>
                [
                    "test/dtlsv1listentest.o",
                ],
            "test/dtlsv1listentest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/dtlsv1listentest.c",
                ],
            "test/ec_internal_test" =>
                [
                    "test/ec_internal_test.o",
                ],
            "test/ec_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ec_internal_test.c",
                ],
            "test/ecdsatest" =>
                [
                    "test/ecdsatest.o",
                ],
            "test/ecdsatest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ecdsatest.c",
                ],
            "test/ecstresstest" =>
                [
                    "test/ecstresstest.o",
                ],
            "test/ecstresstest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ecstresstest.c",
                ],
            "test/ectest" =>
                [
                    "test/ectest.o",
                ],
            "test/ectest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ectest.c",
                ],
            "test/enginetest" =>
                [
                    "test/enginetest.o",
                ],
            "test/enginetest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/enginetest.c",
                ],
            "test/errtest" =>
                [
                    "test/errtest.o",
                ],
            "test/errtest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/errtest.c",
                ],
            "test/evp_extra_test" =>
                [
                    "test/evp_extra_test.o",
                ],
            "test/evp_extra_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/evp_extra_test.c",
                ],
            "test/evp_test" =>
                [
                    "test/evp_test.o",
                ],
            "test/evp_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/evp_test.c",
                ],
            "test/exdatatest" =>
                [
                    "test/exdatatest.o",
                ],
            "test/exdatatest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/exdatatest.c",
                ],
            "test/exptest" =>
                [
                    "test/exptest.o",
                ],
            "test/exptest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/exptest.c",
                ],
            "test/fatalerrtest" =>
                [
                    "test/fatalerrtest.o",
                    "test/ssltestlib.o",
                ],
            "test/fatalerrtest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/fatalerrtest.c",
                ],
            "test/gmdifftest" =>
                [
                    "test/gmdifftest.o",
                ],
            "test/gmdifftest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/gmdifftest.c",
                ],
            "test/gosttest" =>
                [
                    "test/gosttest.o",
                    "test/ssltestlib.o",
                ],
            "test/gosttest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/gosttest.c",
                ],
            "test/handshake_helper.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/handshake_helper.c",
                ],
            "test/hmactest" =>
                [
                    "test/hmactest.o",
                ],
            "test/hmactest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/hmactest.c",
                ],
            "test/ideatest" =>
                [
                    "test/ideatest.o",
                ],
            "test/ideatest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ideatest.c",
                ],
            "test/igetest" =>
                [
                    "test/igetest.o",
                ],
            "test/igetest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/igetest.c",
                ],
            "test/lhash_test" =>
                [
                    "test/lhash_test.o",
                ],
            "test/lhash_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/lhash_test.c",
                ],
            "test/libtestutil.a" =>
                [
                    "test/testutil/basic_output.o",
                    "test/testutil/cb.o",
                    "test/testutil/driver.o",
                    "test/testutil/format_output.o",
                    "test/testutil/init.o",
                    "test/testutil/main.o",
                    "test/testutil/output_helpers.o",
                    "test/testutil/stanza.o",
                    "test/testutil/tap_bio.o",
                    "test/testutil/test_cleanup.o",
                    "test/testutil/tests.o",
                ],
            "test/md2test" =>
                [
                    "test/md2test.o",
                ],
            "test/md2test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/md2test.c",
                ],
            "test/mdc2_internal_test" =>
                [
                    "test/mdc2_internal_test.o",
                ],
            "test/mdc2_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/mdc2_internal_test.c",
                ],
            "test/mdc2test" =>
                [
                    "test/mdc2test.o",
                ],
            "test/mdc2test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/mdc2test.c",
                ],
            "test/memleaktest" =>
                [
                    "test/memleaktest.o",
                ],
            "test/memleaktest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/memleaktest.c",
                ],
            "test/modes_internal_test" =>
                [
                    "test/modes_internal_test.o",
                ],
            "test/modes_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/modes_internal_test.c",
                ],
            "test/ocspapitest" =>
                [
                    "test/ocspapitest.o",
                ],
            "test/ocspapitest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ocspapitest.c",
                ],
            "test/packettest" =>
                [
                    "test/packettest.o",
                ],
            "test/packettest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/packettest.c",
                ],
            "test/pbelutest" =>
                [
                    "test/pbelutest.o",
                ],
            "test/pbelutest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/pbelutest.c",
                ],
            "test/pemtest" =>
                [
                    "test/pemtest.o",
                ],
            "test/pemtest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/pemtest.c",
                ],
            "test/pkey_meth_kdf_test" =>
                [
                    "test/pkey_meth_kdf_test.o",
                ],
            "test/pkey_meth_kdf_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/pkey_meth_kdf_test.c",
                ],
            "test/pkey_meth_test" =>
                [
                    "test/pkey_meth_test.o",
                ],
            "test/pkey_meth_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/pkey_meth_test.c",
                ],
            "test/poly1305_internal_test" =>
                [
                    "test/poly1305_internal_test.o",
                ],
            "test/poly1305_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/poly1305_internal_test.c",
                ],
            "test/rc2test" =>
                [
                    "test/rc2test.o",
                ],
            "test/rc2test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/rc2test.c",
                ],
            "test/rc4test" =>
                [
                    "test/rc4test.o",
                ],
            "test/rc4test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/rc4test.c",
                ],
            "test/rc5test" =>
                [
                    "test/rc5test.o",
                ],
            "test/rc5test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/rc5test.c",
                ],
            "test/rdrand_sanitytest" =>
                [
                    "test/rdrand_sanitytest.o",
                ],
            "test/rdrand_sanitytest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/rdrand_sanitytest.c",
                ],
            "test/recordlentest" =>
                [
                    "test/recordlentest.o",
                    "test/ssltestlib.o",
                ],
            "test/recordlentest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/recordlentest.c",
                ],
            "test/rsa_complex" =>
                [
                    "test/rsa_complex.o",
                ],
            "test/rsa_complex.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/rsa_complex.c",
                ],
            "test/rsa_mp_test" =>
                [
                    "test/rsa_mp_test.o",
                ],
            "test/rsa_mp_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/rsa_mp_test.c",
                ],
            "test/rsa_test" =>
                [
                    "test/rsa_test.o",
                ],
            "test/rsa_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/rsa_test.c",
                ],
            "test/sanitytest" =>
                [
                    "test/sanitytest.o",
                ],
            "test/sanitytest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/sanitytest.c",
                ],
            "test/secmemtest" =>
                [
                    "test/secmemtest.o",
                ],
            "test/secmemtest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/secmemtest.c",
                ],
            "test/servername_test" =>
                [
                    "test/servername_test.o",
                    "test/ssltestlib.o",
                ],
            "test/servername_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/servername_test.c",
                ],
            "test/shlibloadtest" =>
                [
                    "test/shlibloadtest.o",
                ],
            "test/shlibloadtest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/shlibloadtest.c",
                ],
            "test/siphash_internal_test" =>
                [
                    "test/siphash_internal_test.o",
                ],
            "test/siphash_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/siphash_internal_test.c",
                ],
            "test/sm2_internal_test" =>
                [
                    "test/sm2_internal_test.o",
                ],
            "test/sm2_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/sm2_internal_test.c",
                ],
            "test/sm4_internal_test" =>
                [
                    "test/sm4_internal_test.o",
                ],
            "test/sm4_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/sm4_internal_test.c",
                ],
            "test/srptest" =>
                [
                    "test/srptest.o",
                ],
            "test/srptest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/srptest.c",
                ],
            "test/ssl_cert_table_internal_test" =>
                [
                    "test/ssl_cert_table_internal_test.o",
                ],
            "test/ssl_cert_table_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ssl_cert_table_internal_test.c",
                ],
            "test/ssl_test" =>
                [
                    "test/handshake_helper.o",
                    "test/ssl_test.o",
                    "test/ssl_test_ctx.o",
                ],
            "test/ssl_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ssl_test.c",
                ],
            "test/ssl_test_ctx.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ssl_test_ctx.c",
                ],
            "test/ssl_test_ctx_test" =>
                [
                    "test/ssl_test_ctx.o",
                    "test/ssl_test_ctx_test.o",
                ],
            "test/ssl_test_ctx_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ssl_test_ctx_test.c",
                ],
            "test/sslapitest" =>
                [
                    "test/sslapitest.o",
                    "test/ssltestlib.o",
                ],
            "test/sslapitest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/sslapitest.c",
                ],
            "test/sslbuffertest" =>
                [
                    "test/sslbuffertest.o",
                    "test/ssltestlib.o",
                ],
            "test/sslbuffertest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/sslbuffertest.c",
                ],
            "test/sslcorrupttest" =>
                [
                    "test/sslcorrupttest.o",
                    "test/ssltestlib.o",
                ],
            "test/sslcorrupttest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/sslcorrupttest.c",
                ],
            "test/ssltest_old" =>
                [
                    "test/ssltest_old.o",
                ],
            "test/ssltest_old.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ssltest_old.c",
                ],
            "test/ssltestlib.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/ssltestlib.c",
                ],
            "test/stack_test" =>
                [
                    "test/stack_test.o",
                ],
            "test/stack_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/stack_test.c",
                ],
            "test/sysdefaulttest" =>
                [
                    "test/sysdefaulttest.o",
                ],
            "test/sysdefaulttest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/sysdefaulttest.c",
                ],
            "test/test_test" =>
                [
                    "test/test_test.o",
                ],
            "test/test_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/test_test.c",
                ],
            "test/testutil/basic_output.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/testutil/basic_output.c",
                ],
            "test/testutil/cb.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/testutil/cb.c",
                ],
            "test/testutil/driver.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/testutil/driver.c",
                ],
            "test/testutil/format_output.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/testutil/format_output.c",
                ],
            "test/testutil/init.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/testutil/init.c",
                ],
            "test/testutil/main.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/testutil/main.c",
                ],
            "test/testutil/output_helpers.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/testutil/output_helpers.c",
                ],
            "test/testutil/stanza.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/testutil/stanza.c",
                ],
            "test/testutil/tap_bio.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/testutil/tap_bio.c",
                ],
            "test/testutil/test_cleanup.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/testutil/test_cleanup.c",
                ],
            "test/testutil/tests.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/testutil/tests.c",
                ],
            "test/threadstest" =>
                [
                    "test/threadstest.o",
                ],
            "test/threadstest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/threadstest.c",
                ],
            "test/time_offset_test" =>
                [
                    "test/time_offset_test.o",
                ],
            "test/time_offset_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/time_offset_test.c",
                ],
            "test/tls13ccstest" =>
                [
                    "test/ssltestlib.o",
                    "test/tls13ccstest.o",
                ],
            "test/tls13ccstest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/tls13ccstest.c",
                ],
            "test/tls13encryptiontest" =>
                [
                    "test/tls13encryptiontest.o",
                ],
            "test/tls13encryptiontest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/tls13encryptiontest.c",
                ],
            "test/tls13secretstest" =>
                [
                    "ssl/packet.o",
                    "ssl/tls13_enc.o",
                    "test/tls13secretstest.o",
                ],
            "test/tls13secretstest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/tls13secretstest.c",
                ],
            "test/uitest" =>
                [
                    "test/uitest.o",
                ],
            "test/uitest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/uitest.c",
                ],
            "test/v3ext" =>
                [
                    "test/v3ext.o",
                ],
            "test/v3ext.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/v3ext.c",
                ],
            "test/v3nametest" =>
                [
                    "test/v3nametest.o",
                ],
            "test/v3nametest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/v3nametest.c",
                ],
            "test/verify_extra_test" =>
                [
                    "test/verify_extra_test.o",
                ],
            "test/verify_extra_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/verify_extra_test.c",
                ],
            "test/versions" =>
                [
                    "test/versions.o",
                ],
            "test/versions.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/versions.c",
                ],
            "test/wpackettest" =>
                [
                    "test/wpackettest.o",
                ],
            "test/wpackettest.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/wpackettest.c",
                ],
            "test/x509_check_cert_pkey_test" =>
                [
                    "test/x509_check_cert_pkey_test.o",
                ],
            "test/x509_check_cert_pkey_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/x509_check_cert_pkey_test.c",
                ],
            "test/x509_dup_cert_test" =>
                [
                    "test/x509_dup_cert_test.o",
                ],
            "test/x509_dup_cert_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/x509_dup_cert_test.c",
                ],
            "test/x509_internal_test" =>
                [
                    "test/x509_internal_test.o",
                ],
            "test/x509_internal_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/x509_internal_test.c",
                ],
            "test/x509_time_test" =>
                [
                    "test/x509_time_test.o",
                ],
            "test/x509_time_test.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/x509_time_test.c",
                ],
            "test/x509aux" =>
                [
                    "test/x509aux.o",
                ],
            "test/x509aux.o" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/test/x509aux.c",
                ],
            "tools/c_rehash" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/tools/c_rehash.in",
                ],
            "util/shlib_wrap.sh" =>
                [
                    "../../../../../../../ThirdParty/openssl-1.1.1c/util/shlib_wrap.sh.in",
                ],
        },
);

# The following data is only used when this files is use as a script
my @makevars = (
    'AR',
    'ARFLAGS',
    'AS',
    'ASFLAGS',
    'CC',
    'CFLAGS',
    'CPP',
    'CPPDEFINES',
    'CPPFLAGS',
    'CPPINCLUDES',
    'CROSS_COMPILE',
    'CXX',
    'CXXFLAGS',
    'HASHBANGPERL',
    'LD',
    'LDFLAGS',
    'LDLIBS',
    'MT',
    'MTFLAGS',
    'PERL',
    'RANLIB',
    'RC',
    'RCFLAGS',
    'RM',
);
my %disabled_info = (
    'afalgeng' => {
        macro => 'OPENSSL_NO_AFALGENG',
    },
    'asan' => {
        macro => 'OPENSSL_NO_ASAN',
    },
    'asm' => {
        macro => 'OPENSSL_NO_ASM',
    },
    'async' => {
        macro => 'OPENSSL_NO_ASYNC',
    },
    'crypto-mdebug' => {
        macro => 'OPENSSL_NO_CRYPTO_MDEBUG',
    },
    'crypto-mdebug-backtrace' => {
        macro => 'OPENSSL_NO_CRYPTO_MDEBUG_BACKTRACE',
    },
    'devcryptoeng' => {
        macro => 'OPENSSL_NO_DEVCRYPTOENG',
    },
    'ec_nistp_64_gcc_128' => {
        macro => 'OPENSSL_NO_EC_NISTP_64_GCC_128',
    },
    'egd' => {
        macro => 'OPENSSL_NO_EGD',
    },
    'engine' => {
        macro => 'OPENSSL_NO_ENGINE',
        skipped => [ 'crypto/engine', 'engines' ],
    },
    'external-tests' => {
        macro => 'OPENSSL_NO_EXTERNAL_TESTS',
    },
    'fuzz-afl' => {
        macro => 'OPENSSL_NO_FUZZ_AFL',
    },
    'fuzz-libfuzzer' => {
        macro => 'OPENSSL_NO_FUZZ_LIBFUZZER',
    },
    'heartbeats' => {
        macro => 'OPENSSL_NO_HEARTBEATS',
    },
    'md2' => {
        macro => 'OPENSSL_NO_MD2',
        skipped => [ 'crypto/md2' ],
    },
    'msan' => {
        macro => 'OPENSSL_NO_MSAN',
    },
    'rc5' => {
        macro => 'OPENSSL_NO_RC5',
        skipped => [ 'crypto/rc5' ],
    },
    'sctp' => {
        macro => 'OPENSSL_NO_SCTP',
    },
    'ssl-trace' => {
        macro => 'OPENSSL_NO_SSL_TRACE',
    },
    'ssl3' => {
        macro => 'OPENSSL_NO_SSL3',
    },
    'ssl3-method' => {
        macro => 'OPENSSL_NO_SSL3_METHOD',
    },
    'ubsan' => {
        macro => 'OPENSSL_NO_UBSAN',
    },
    'unit-test' => {
        macro => 'OPENSSL_NO_UNIT_TEST',
    },
    'weak-ssl-ciphers' => {
        macro => 'OPENSSL_NO_WEAK_SSL_CIPHERS',
    },
);
my @user_crossable = qw( AR AS CC CXX CPP LD MT RANLIB RC );
# If run directly, we can give some answers, and even reconfigure
unless (caller) {
    use Getopt::Long;
    use File::Spec::Functions;
    use File::Basename;
    use Pod::Usage;

    my $here = dirname($0);

    my $dump = undef;
    my $cmdline = undef;
    my $options = undef;
    my $target = undef;
    my $envvars = undef;
    my $makevars = undef;
    my $buildparams = undef;
    my $reconf = undef;
    my $verbose = undef;
    my $help = undef;
    my $man = undef;
    GetOptions('dump|d'                 => \$dump,
               'command-line|c'         => \$cmdline,
               'options|o'              => \$options,
               'target|t'               => \$target,
               'environment|e'          => \$envvars,
               'make-variables|m'       => \$makevars,
               'build-parameters|b'     => \$buildparams,
               'reconfigure|reconf|r'   => \$reconf,
               'verbose|v'              => \$verbose,
               'help'                   => \$help,
               'man'                    => \$man)
        or die "Errors in command line arguments\n";

    unless ($dump || $cmdline || $options || $target || $envvars || $makevars
            || $buildparams || $reconf || $verbose || $help || $man) {
        print STDERR <<"_____";
You must give at least one option.
For more information, do '$0 --help'
_____
        exit(2);
    }

    if ($help) {
        pod2usage(-exitval => 0,
                  -verbose => 1);
    }
    if ($man) {
        pod2usage(-exitval => 0,
                  -verbose => 2);
    }
    if ($dump || $cmdline) {
        print "\nCommand line (with current working directory = $here):\n\n";
        print '    ',join(' ',
                          $config{PERL},
                          catfile($config{sourcedir}, 'Configure'),
                          @{$config{perlargv}}), "\n";
        print "\nPerl information:\n\n";
        print '    ',$config{perl_cmd},"\n";
        print '    ',$config{perl_version},' for ',$config{perl_archname},"\n";
    }
    if ($dump || $options) {
        my $longest = 0;
        my $longest2 = 0;
        foreach my $what (@disablables) {
            $longest = length($what) if $longest < length($what);
            $longest2 = length($disabled{$what})
                if $disabled{$what} && $longest2 < length($disabled{$what});
        }
        print "\nEnabled features:\n\n";
        foreach my $what (@disablables) {
            print "    $what\n" unless $disabled{$what};
        }
        print "\nDisabled features:\n\n";
        foreach my $what (@disablables) {
            if ($disabled{$what}) {
                print "    $what", ' ' x ($longest - length($what) + 1),
                    "[$disabled{$what}]", ' ' x ($longest2 - length($disabled{$what}) + 1);
                print $disabled_info{$what}->{macro}
                    if $disabled_info{$what}->{macro};
                print ' (skip ',
                    join(', ', @{$disabled_info{$what}->{skipped}}),
                    ')'
                    if $disabled_info{$what}->{skipped};
                print "\n";
            }
        }
    }
    if ($dump || $target) {
        print "\nConfig target attributes:\n\n";
        foreach (sort keys %target) {
            next if $_ =~ m|^_| || $_ eq 'template';
            my $quotify = sub {
                map { (my $x = $_) =~ s|([\\\$\@"])|\\$1|g; "\"$x\""} @_;
            };
            print '    ', $_, ' => ';
            if (ref($target{$_}) eq "ARRAY") {
                print '[ ', join(', ', $quotify->(@{$target{$_}})), " ],\n";
            } else {
                print $quotify->($target{$_}), ",\n"
            }
        }
    }
    if ($dump || $envvars) {
        print "\nRecorded environment:\n\n";
        foreach (sort keys %{$config{perlenv}}) {
            print '    ',$_,' = ',($config{perlenv}->{$_} || ''),"\n";
        }
    }
    if ($dump || $makevars) {
        print "\nMakevars:\n\n";
        foreach my $var (@makevars) {
            my $prefix = '';
            $prefix = $config{CROSS_COMPILE}
                if grep { $var eq $_ } @user_crossable;
            $prefix //= '';
            print '    ',$var,' ' x (16 - length $var),'= ',
                (ref $config{$var} eq 'ARRAY'
                 ? join(' ', @{$config{$var}})
                 : $prefix.$config{$var}),
                "\n"
                if defined $config{$var};
        }

        my @buildfile = ($config{builddir}, $config{build_file});
        unshift @buildfile, $here
            unless file_name_is_absolute($config{builddir});
        my $buildfile = canonpath(catdir(@buildfile));
        print <<"_____";

NOTE: These variables only represent the configuration view.  The build file
template may have processed these variables further, please have a look at the
build file for more exact data:
    $buildfile
_____
    }
    if ($dump || $buildparams) {
        my @buildfile = ($config{builddir}, $config{build_file});
        unshift @buildfile, $here
            unless file_name_is_absolute($config{builddir});
        print "\nbuild file:\n\n";
        print "    ", canonpath(catfile(@buildfile)),"\n";

        print "\nbuild file templates:\n\n";
        foreach (@{$config{build_file_templates}}) {
            my @tmpl = ($_);
            unshift @tmpl, $here
                unless file_name_is_absolute($config{sourcedir});
            print '    ',canonpath(catfile(@tmpl)),"\n";
        }
    }
    if ($reconf) {
        if ($verbose) {
            print 'Reconfiguring with: ', join(' ',@{$config{perlargv}}), "\n";
            foreach (sort keys %{$config{perlenv}}) {
                print '    ',$_,' = ',($config{perlenv}->{$_} || ""),"\n";
            }
        }

        chdir $here;
        exec $^X,catfile($config{sourcedir}, 'Configure'),'reconf';
    }
}

1;

__END__

=head1 NAME

configdata.pm - configuration data for OpenSSL builds

=head1 SYNOPSIS

Interactive:

  perl configdata.pm [options]

As data bank module:

  use configdata;

=head1 DESCRIPTION

This module can be used in two modes, interactively and as a module containing
all the data recorded by OpenSSL's Configure script.

When used interactively, simply run it as any perl script, with at least one
option, and you will get the information you ask for.  See L</OPTIONS> below.

When loaded as a module, you get a few databanks with useful information to
perform build related tasks.  The databanks are:

    %config             Configured things.
    %target             The OpenSSL config target with all inheritances
                        resolved.
    %disabled           The features that are disabled.
    @disablables        The list of features that can be disabled.
    %withargs           All data given through --with-THING options.
    %unified_info       All information that was computed from the build.info
                        files.

=head1 OPTIONS

=over 4

=item B<--help>

Print a brief help message and exit.

=item B<--man>

Print the manual page and exit.

=item B<--dump> | B<-d>

Print all relevant configuration data.  This is equivalent to B<--command-line>
B<--options> B<--target> B<--environment> B<--make-variables>
B<--build-parameters>.

=item B<--command-line> | B<-c>

Print the current configuration command line.

=item B<--options> | B<-o>

Print the features, both enabled and disabled, and display defined macro and
skipped directories where applicable.

=item B<--target> | B<-t>

Print the config attributes for this config target.

=item B<--environment> | B<-e>

Print the environment variables and their values at the time of configuration.

=item B<--make-variables> | B<-m>

Print the main make variables generated in the current configuration

=item B<--build-parameters> | B<-b>

Print the build parameters, i.e. build file and build file templates.

=item B<--reconfigure> | B<--reconf> | B<-r>

Redo the configuration.

=item B<--verbose> | B<-v>

Verbose output.

=back

=cut

