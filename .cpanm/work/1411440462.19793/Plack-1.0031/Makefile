# This Makefile is for the Plack extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.98 (Revision: 69800) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#

#   MakeMaker Parameters:

#     ABSTRACT => q[Perl Superglue for Web frameworks and Web Servers (PSGI toolkit)]
#     AUTHOR => [q[Tatsuhiko Miyagawa]]
#     BUILD_REQUIRES => {  }
#     CONFIGURE_REQUIRES => { ExtUtils::MakeMaker=>q[0], File::ShareDir::Install=>q[0.06] }
#     DISTNAME => q[Plack]
#     EXE_FILES => [q[script/plackup]]
#     LICENSE => q[perl]
#     NAME => q[Plack]
#     PREREQ_PM => { Apache::LogFormat::Compiler=>q[0.12], HTTP::Message=>q[5.814], Pod::Usage=>q[1.36], Stream::Buffered=>q[0.02], URI=>q[1.59], HTTP::Body=>q[1.06], Devel::StackTrace::AsHTML=>q[0.11], Test::More=>q[0.88], Try::Tiny=>q[0], Test::Requires=>q[0], parent=>q[0], HTTP::Tiny=>q[0.034], Devel::StackTrace=>q[1.23], Hash::MultiValue=>q[0.05], File::ShareDir=>q[1.00], Test::TCP=>q[2.00], Filesys::Notify::Simple=>q[0] }
#     TEST_REQUIRES => { Test::Requires=>q[0], Test::More=>q[0.88] }
#     VERSION => q[1.0031]
#     test => { TESTS=>q[t/*.t t/HTTP-Message-PSGI/*.t t/HTTP-Server-PSGI/*.t t/Plack-Builder/*.t t/Plack-HTTPParser-PP/*.t t/Plack-Handler/*.t t/Plack-Loader/*.t t/Plack-MIME/*.t t/Plack-Middleware/*.t t/Plack-Middleware/cascade/*.t t/Plack-Middleware/recursive/*.t t/Plack-Middleware/stacktrace/*.t t/Plack-Request/*.t t/Plack-Response/*.t t/Plack-Runner/*.t t/Plack-TempBuffer/*.t t/Plack-Test/*.t t/Plack-Util/*.t] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /home/isucon/.local/perl/lib/5.20.0/x86_64-linux/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = cc
CCCDLFLAGS = -fPIC
CCDLFLAGS = -Wl,-E
DLEXT = so
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = cc
LDDLFLAGS = -shared -O2 -g -L/usr/local/lib -fstack-protector
LDFLAGS =  -fstack-protector -L/usr/local/lib
LIBC = libc-2.17.so
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = linux
OSVERS = 3.10.42-52.145.amzn1.x86_64
RANLIB = :
SITELIBEXP = /home/isucon/.local/perl/lib/site_perl/5.20.0
SITEARCHEXP = /home/isucon/.local/perl/lib/site_perl/5.20.0/x86_64-linux
SO = so
VENDORARCHEXP = 
VENDORLIBEXP = 


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = Plack
NAME_SYM = Plack
VERSION = 1.0031
VERSION_MACRO = VERSION
VERSION_SYM = 1_0031
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 1.0031
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1
MAN3EXT = 3
INSTALLDIRS = site
INSTALL_BASE = /home/isucon/webapp/perl/local
DESTDIR = 
PREFIX = $(INSTALL_BASE)
INSTALLPRIVLIB = $(INSTALL_BASE)/lib/perl5
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = $(INSTALL_BASE)/lib/perl5
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = $(INSTALL_BASE)/lib/perl5
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = $(INSTALL_BASE)/lib/perl5/x86_64-linux
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = $(INSTALL_BASE)/lib/perl5/x86_64-linux
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = $(INSTALL_BASE)/lib/perl5/x86_64-linux
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = $(INSTALL_BASE)/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = $(INSTALL_BASE)/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = $(INSTALL_BASE)/bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = $(INSTALL_BASE)/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = $(INSTALL_BASE)/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = $(INSTALL_BASE)/bin
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = none
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = $(INSTALL_BASE)/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = $(INSTALL_BASE)/man/man1
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = none
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = $(INSTALL_BASE)/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = $(INSTALL_BASE)/man/man3
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = /home/isucon/.local/perl/lib/5.20.0
PERL_ARCHLIB = /home/isucon/.local/perl/lib/5.20.0/x86_64-linux
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /home/isucon/.local/perl/lib/5.20.0/x86_64-linux/CORE
PERL = /home/isucon/.local/perl/bin/perl
FULLPERL = /home/isucon/.local/perl/bin/perl
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /home/isucon/.local/perl/lib/5.20.0/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.98
MM_REVISION = 69800

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = Plack
BASEEXT = Plack
PARENT_NAME = 
DLBASE = $(BASEEXT)
VERSION_FROM = 
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = 
MAN3PODS = 

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)
INST_ARCHLIBDIR  = $(INST_ARCHLIB)

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/HTTP/Message/PSGI.pm \
	lib/HTTP/Server/PSGI.pm \
	lib/Plack.pm \
	lib/Plack/App/CGIBin.pm \
	lib/Plack/App/Cascade.pm \
	lib/Plack/App/Directory.pm \
	lib/Plack/App/File.pm \
	lib/Plack/App/PSGIBin.pm \
	lib/Plack/App/URLMap.pm \
	lib/Plack/App/WrapCGI.pm \
	lib/Plack/Builder.pm \
	lib/Plack/Component.pm \
	lib/Plack/HTTPParser.pm \
	lib/Plack/HTTPParser/PP.pm \
	lib/Plack/Handler.pm \
	lib/Plack/Handler/Apache1.pm \
	lib/Plack/Handler/Apache2.pm \
	lib/Plack/Handler/Apache2/Registry.pm \
	lib/Plack/Handler/CGI.pm \
	lib/Plack/Handler/FCGI.pm \
	lib/Plack/Handler/HTTP/Server/PSGI.pm \
	lib/Plack/Handler/Standalone.pm \
	lib/Plack/LWPish.pm \
	lib/Plack/Loader.pm \
	lib/Plack/Loader/Delayed.pm \
	lib/Plack/Loader/Restarter.pm \
	lib/Plack/Loader/Shotgun.pm \
	lib/Plack/MIME.pm \
	lib/Plack/Middleware.pm \
	lib/Plack/Middleware/AccessLog.pm \
	lib/Plack/Middleware/AccessLog/Timed.pm \
	lib/Plack/Middleware/Auth/Basic.pm \
	lib/Plack/Middleware/BufferedStreaming.pm \
	lib/Plack/Middleware/Chunked.pm \
	lib/Plack/Middleware/Conditional.pm \
	lib/Plack/Middleware/ConditionalGET.pm \
	lib/Plack/Middleware/ContentLength.pm \
	lib/Plack/Middleware/ContentMD5.pm \
	lib/Plack/Middleware/ErrorDocument.pm \
	lib/Plack/Middleware/HTTPExceptions.pm \
	lib/Plack/Middleware/Head.pm \
	lib/Plack/Middleware/IIS6ScriptNameFix.pm \
	lib/Plack/Middleware/IIS7KeepAliveFix.pm \
	lib/Plack/Middleware/JSONP.pm \
	lib/Plack/Middleware/LighttpdScriptNameFix.pm \
	lib/Plack/Middleware/Lint.pm \
	lib/Plack/Middleware/Log4perl.pm \
	lib/Plack/Middleware/LogDispatch.pm \
	lib/Plack/Middleware/NullLogger.pm \
	lib/Plack/Middleware/RearrangeHeaders.pm \
	lib/Plack/Middleware/Recursive.pm \
	lib/Plack/Middleware/Refresh.pm \
	lib/Plack/Middleware/Runtime.pm \
	lib/Plack/Middleware/SimpleContentFilter.pm \
	lib/Plack/Middleware/SimpleLogger.pm \
	lib/Plack/Middleware/StackTrace.pm \
	lib/Plack/Middleware/Static.pm \
	lib/Plack/Middleware/XFramework.pm \
	lib/Plack/Middleware/XSendfile.pm \
	lib/Plack/Request.pm \
	lib/Plack/Request/Upload.pm \
	lib/Plack/Response.pm \
	lib/Plack/Runner.pm \
	lib/Plack/TempBuffer.pm \
	lib/Plack/Test.pm \
	lib/Plack/Test/MockHTTP.pm \
	lib/Plack/Test/Server.pm \
	lib/Plack/Test/Suite.pm \
	lib/Plack/Util.pm \
	lib/Plack/Util/Accessor.pm

PM_TO_BLIB = lib/HTTP/Message/PSGI.pm \
	blib/lib/HTTP/Message/PSGI.pm \
	lib/HTTP/Server/PSGI.pm \
	blib/lib/HTTP/Server/PSGI.pm \
	lib/Plack.pm \
	blib/lib/Plack.pm \
	lib/Plack/App/CGIBin.pm \
	blib/lib/Plack/App/CGIBin.pm \
	lib/Plack/App/Cascade.pm \
	blib/lib/Plack/App/Cascade.pm \
	lib/Plack/App/Directory.pm \
	blib/lib/Plack/App/Directory.pm \
	lib/Plack/App/File.pm \
	blib/lib/Plack/App/File.pm \
	lib/Plack/App/PSGIBin.pm \
	blib/lib/Plack/App/PSGIBin.pm \
	lib/Plack/App/URLMap.pm \
	blib/lib/Plack/App/URLMap.pm \
	lib/Plack/App/WrapCGI.pm \
	blib/lib/Plack/App/WrapCGI.pm \
	lib/Plack/Builder.pm \
	blib/lib/Plack/Builder.pm \
	lib/Plack/Component.pm \
	blib/lib/Plack/Component.pm \
	lib/Plack/HTTPParser.pm \
	blib/lib/Plack/HTTPParser.pm \
	lib/Plack/HTTPParser/PP.pm \
	blib/lib/Plack/HTTPParser/PP.pm \
	lib/Plack/Handler.pm \
	blib/lib/Plack/Handler.pm \
	lib/Plack/Handler/Apache1.pm \
	blib/lib/Plack/Handler/Apache1.pm \
	lib/Plack/Handler/Apache2.pm \
	blib/lib/Plack/Handler/Apache2.pm \
	lib/Plack/Handler/Apache2/Registry.pm \
	blib/lib/Plack/Handler/Apache2/Registry.pm \
	lib/Plack/Handler/CGI.pm \
	blib/lib/Plack/Handler/CGI.pm \
	lib/Plack/Handler/FCGI.pm \
	blib/lib/Plack/Handler/FCGI.pm \
	lib/Plack/Handler/HTTP/Server/PSGI.pm \
	blib/lib/Plack/Handler/HTTP/Server/PSGI.pm \
	lib/Plack/Handler/Standalone.pm \
	blib/lib/Plack/Handler/Standalone.pm \
	lib/Plack/LWPish.pm \
	blib/lib/Plack/LWPish.pm \
	lib/Plack/Loader.pm \
	blib/lib/Plack/Loader.pm \
	lib/Plack/Loader/Delayed.pm \
	blib/lib/Plack/Loader/Delayed.pm \
	lib/Plack/Loader/Restarter.pm \
	blib/lib/Plack/Loader/Restarter.pm \
	lib/Plack/Loader/Shotgun.pm \
	blib/lib/Plack/Loader/Shotgun.pm \
	lib/Plack/MIME.pm \
	blib/lib/Plack/MIME.pm \
	lib/Plack/Middleware.pm \
	blib/lib/Plack/Middleware.pm \
	lib/Plack/Middleware/AccessLog.pm \
	blib/lib/Plack/Middleware/AccessLog.pm \
	lib/Plack/Middleware/AccessLog/Timed.pm \
	blib/lib/Plack/Middleware/AccessLog/Timed.pm \
	lib/Plack/Middleware/Auth/Basic.pm \
	blib/lib/Plack/Middleware/Auth/Basic.pm \
	lib/Plack/Middleware/BufferedStreaming.pm \
	blib/lib/Plack/Middleware/BufferedStreaming.pm \
	lib/Plack/Middleware/Chunked.pm \
	blib/lib/Plack/Middleware/Chunked.pm \
	lib/Plack/Middleware/Conditional.pm \
	blib/lib/Plack/Middleware/Conditional.pm \
	lib/Plack/Middleware/ConditionalGET.pm \
	blib/lib/Plack/Middleware/ConditionalGET.pm \
	lib/Plack/Middleware/ContentLength.pm \
	blib/lib/Plack/Middleware/ContentLength.pm \
	lib/Plack/Middleware/ContentMD5.pm \
	blib/lib/Plack/Middleware/ContentMD5.pm \
	lib/Plack/Middleware/ErrorDocument.pm \
	blib/lib/Plack/Middleware/ErrorDocument.pm \
	lib/Plack/Middleware/HTTPExceptions.pm \
	blib/lib/Plack/Middleware/HTTPExceptions.pm \
	lib/Plack/Middleware/Head.pm \
	blib/lib/Plack/Middleware/Head.pm \
	lib/Plack/Middleware/IIS6ScriptNameFix.pm \
	blib/lib/Plack/Middleware/IIS6ScriptNameFix.pm \
	lib/Plack/Middleware/IIS7KeepAliveFix.pm \
	blib/lib/Plack/Middleware/IIS7KeepAliveFix.pm \
	lib/Plack/Middleware/JSONP.pm \
	blib/lib/Plack/Middleware/JSONP.pm \
	lib/Plack/Middleware/LighttpdScriptNameFix.pm \
	blib/lib/Plack/Middleware/LighttpdScriptNameFix.pm \
	lib/Plack/Middleware/Lint.pm \
	blib/lib/Plack/Middleware/Lint.pm \
	lib/Plack/Middleware/Log4perl.pm \
	blib/lib/Plack/Middleware/Log4perl.pm \
	lib/Plack/Middleware/LogDispatch.pm \
	blib/lib/Plack/Middleware/LogDispatch.pm \
	lib/Plack/Middleware/NullLogger.pm \
	blib/lib/Plack/Middleware/NullLogger.pm \
	lib/Plack/Middleware/RearrangeHeaders.pm \
	blib/lib/Plack/Middleware/RearrangeHeaders.pm \
	lib/Plack/Middleware/Recursive.pm \
	blib/lib/Plack/Middleware/Recursive.pm \
	lib/Plack/Middleware/Refresh.pm \
	blib/lib/Plack/Middleware/Refresh.pm \
	lib/Plack/Middleware/Runtime.pm \
	blib/lib/Plack/Middleware/Runtime.pm \
	lib/Plack/Middleware/SimpleContentFilter.pm \
	blib/lib/Plack/Middleware/SimpleContentFilter.pm \
	lib/Plack/Middleware/SimpleLogger.pm \
	blib/lib/Plack/Middleware/SimpleLogger.pm \
	lib/Plack/Middleware/StackTrace.pm \
	blib/lib/Plack/Middleware/StackTrace.pm \
	lib/Plack/Middleware/Static.pm \
	blib/lib/Plack/Middleware/Static.pm \
	lib/Plack/Middleware/XFramework.pm \
	blib/lib/Plack/Middleware/XFramework.pm \
	lib/Plack/Middleware/XSendfile.pm \
	blib/lib/Plack/Middleware/XSendfile.pm \
	lib/Plack/Request.pm \
	blib/lib/Plack/Request.pm \
	lib/Plack/Request/Upload.pm \
	blib/lib/Plack/Request/Upload.pm \
	lib/Plack/Response.pm \
	blib/lib/Plack/Response.pm \
	lib/Plack/Runner.pm \
	blib/lib/Plack/Runner.pm \
	lib/Plack/TempBuffer.pm \
	blib/lib/Plack/TempBuffer.pm \
	lib/Plack/Test.pm \
	blib/lib/Plack/Test.pm \
	lib/Plack/Test/MockHTTP.pm \
	blib/lib/Plack/Test/MockHTTP.pm \
	lib/Plack/Test/Server.pm \
	blib/lib/Plack/Test/Server.pm \
	lib/Plack/Test/Suite.pm \
	blib/lib/Plack/Test/Suite.pm \
	lib/Plack/Util.pm \
	blib/lib/Plack/Util.pm \
	lib/Plack/Util/Accessor.pm \
	blib/lib/Plack/Util/Accessor.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.98
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$$$ARGV[0], $$$$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --
CP_NONEMPTY = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'cp_nonempty' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip --best
SUFFIX = .gz
SHAR = shar
PREOP = $(NOECHO) $(NOOP)
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = Plack
DISTVNAME = Plack-1.0031


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"\
	INSTALL_BASE="$(INSTALL_BASE)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(BOOTSTRAP) $(INST_DYNAMIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all 
	$(NOECHO) $(NOOP)




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:

EXE_FILES = script/plackup

pure_all :: $(INST_SCRIPT)/plackup
	$(NOECHO) $(NOOP)

realclean ::
	$(RM_F) \
	  $(INST_SCRIPT)/plackup 

$(INST_SCRIPT)/plackup : script/plackup $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/plackup
	$(CP) script/plackup $(INST_SCRIPT)/plackup
	$(FIXIN) $(INST_SCRIPT)/plackup
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/plackup



# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  $(BASEEXT).bso $(BASEEXT).def \
	  $(BASEEXT).exp $(BASEEXT).x \
	  $(BOOTSTRAP) $(INST_ARCHAUTODIR)/extralibs.all \
	  $(INST_ARCHAUTODIR)/extralibs.ld $(MAKE_APERL_FILE) \
	  *$(LIB_EXT) *$(OBJ_EXT) \
	  *perl.core MYMETA.json \
	  MYMETA.yml blibdirs.ts \
	  core core.*perl.*.? \
	  core.[0-9] core.[0-9][0-9] \
	  core.[0-9][0-9][0-9] core.[0-9][0-9][0-9][0-9] \
	  core.[0-9][0-9][0-9][0-9][0-9] lib$(BASEEXT).def \
	  mon.out perl \
	  perl$(EXE_EXT) perl.exe \
	  perlmain.c pm_to_blib \
	  pm_to_blib.ts so_locations \
	  tmon.out 
	- $(RM_RF) \
	  blib 
	  $(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '---' > META_new.yml
	$(NOECHO) $(ECHO) 'abstract: '\''Perl Superglue for Web frameworks and Web Servers (PSGI toolkit)'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'author:' >> META_new.yml
	$(NOECHO) $(ECHO) '  - '\''Tatsuhiko Miyagawa'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'build_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  ExtUtils::MakeMaker: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Test::More: '\''0.88'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Test::Requires: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'configure_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  ExtUtils::MakeMaker: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  File::ShareDir::Install: '\''0.06'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'dynamic_config: 1' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by: '\''ExtUtils::MakeMaker version 6.98, CPAN::Meta::Converter version 2.142060'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'license: perl' >> META_new.yml
	$(NOECHO) $(ECHO) 'meta-spec:' >> META_new.yml
	$(NOECHO) $(ECHO) '  url: http://module-build.sourceforge.net/META-spec-v1.4.html' >> META_new.yml
	$(NOECHO) $(ECHO) '  version: '\''1.4'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'name: Plack' >> META_new.yml
	$(NOECHO) $(ECHO) 'no_index:' >> META_new.yml
	$(NOECHO) $(ECHO) '  directory:' >> META_new.yml
	$(NOECHO) $(ECHO) '    - t' >> META_new.yml
	$(NOECHO) $(ECHO) '    - inc' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  Apache::LogFormat::Compiler: '\''0.12'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Devel::StackTrace: '\''1.23'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Devel::StackTrace::AsHTML: '\''0.11'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  File::ShareDir: '\''1.00'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Filesys::Notify::Simple: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  HTTP::Body: '\''1.06'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  HTTP::Message: '\''5.814'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  HTTP::Tiny: '\''0.034'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Hash::MultiValue: '\''0.05'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Pod::Usage: '\''1.36'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Stream::Buffered: '\''0.02'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Test::TCP: '\''2.00'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Try::Tiny: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  URI: '\''1.59'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  parent: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'version: '\''1.0031'\''' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml
	$(NOECHO) $(ECHO) Generating META.json
	$(NOECHO) $(ECHO) '{' > META_new.json
	$(NOECHO) $(ECHO) '   "abstract" : "Perl Superglue for Web frameworks and Web Servers (PSGI toolkit)",' >> META_new.json
	$(NOECHO) $(ECHO) '   "author" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "Tatsuhiko Miyagawa"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "dynamic_config" : 1,' >> META_new.json
	$(NOECHO) $(ECHO) '   "generated_by" : "ExtUtils::MakeMaker version 6.98, CPAN::Meta::Converter version 2.142060",' >> META_new.json
	$(NOECHO) $(ECHO) '   "license" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "perl_5"' >> META_new.json
	$(NOECHO) $(ECHO) '   ],' >> META_new.json
	$(NOECHO) $(ECHO) '   "meta-spec" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "url" : "http://search.cpan.org/perldoc?CPAN::Meta::Spec",' >> META_new.json
	$(NOECHO) $(ECHO) '      "version" : "2"' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "name" : "Plack",' >> META_new.json
	$(NOECHO) $(ECHO) '   "no_index" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "directory" : [' >> META_new.json
	$(NOECHO) $(ECHO) '         "t",' >> META_new.json
	$(NOECHO) $(ECHO) '         "inc"' >> META_new.json
	$(NOECHO) $(ECHO) '      ]' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "prereqs" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "build" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "ExtUtils::MakeMaker" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Test::More" : "0.88",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Test::Requires" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "configure" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "ExtUtils::MakeMaker" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "File::ShareDir::Install" : "0.06"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "runtime" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "Apache::LogFormat::Compiler" : "0.12",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Devel::StackTrace" : "1.23",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Devel::StackTrace::AsHTML" : "0.11",' >> META_new.json
	$(NOECHO) $(ECHO) '            "File::ShareDir" : "1.00",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Filesys::Notify::Simple" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "HTTP::Body" : "1.06",' >> META_new.json
	$(NOECHO) $(ECHO) '            "HTTP::Message" : "5.814",' >> META_new.json
	$(NOECHO) $(ECHO) '            "HTTP::Tiny" : "0.034",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Hash::MultiValue" : "0.05",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Pod::Usage" : "1.36",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Stream::Buffered" : "0.02",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Test::TCP" : "2.00",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Try::Tiny" : "0",' >> META_new.json
	$(NOECHO) $(ECHO) '            "URI" : "1.59",' >> META_new.json
	$(NOECHO) $(ECHO) '            "parent" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      }' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "release_status" : "stable",' >> META_new.json
	$(NOECHO) $(ECHO) '   "version" : "1.0031"' >> META_new.json
	$(NOECHO) $(ECHO) '}' >> META_new.json
	-$(NOECHO) $(MV) META_new.json $(DISTVNAME)/META.json


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).tar$(SUFFIX)_uu'

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).tar$(SUFFIX)'
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).zip'
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).shar'
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir distmeta 
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -e q{META.yml};' \
	  -e 'eval { maniadd({q{META.yml} => q{Module YAML meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.yml to MANIFEST: $$$${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -f q{META.json};' \
	  -e 'eval { maniadd({q{META.json} => q{Module JSON meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.json to MANIFEST: $$$${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $$$${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)


doc_perl_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /home/isucon/.local/perl/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t t/HTTP-Message-PSGI/*.t t/HTTP-Server-PSGI/*.t t/Plack-Builder/*.t t/Plack-HTTPParser-PP/*.t t/Plack-Handler/*.t t/Plack-Loader/*.t t/Plack-MIME/*.t t/Plack-Middleware/*.t t/Plack-Middleware/cascade/*.t t/Plack-Middleware/recursive/*.t t/Plack-Middleware/stacktrace/*.t t/Plack-Request/*.t t/Plack-Response/*.t t/Plack-Runner/*.t t/Plack-TempBuffer/*.t t/Plack-Test/*.t t/Plack-Util/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="$(VERSION)">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>Perl Superglue for Web frameworks and Web Servers (PSGI toolkit)</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>Tatsuhiko Miyagawa</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE VERSION="0.12" NAME="Apache::LogFormat::Compiler" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE VERSION="1.23" NAME="Devel::StackTrace" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Devel::StackTrace::AsHTML" VERSION="0.11" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE VERSION="1" NAME="File::ShareDir" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Filesys::Notify::Simple" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="HTTP::Body" VERSION="1.06" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE VERSION="5.814" NAME="HTTP::Message" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE VERSION="0.034" NAME="HTTP::Tiny" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE VERSION="0.05" NAME="Hash::MultiValue" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Pod::Usage" VERSION="1.36" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Stream::Buffered" VERSION="0.02" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE VERSION="2" NAME="Test::TCP" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Try::Tiny" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="URI::" VERSION="1.59" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="parent::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="x86_64-linux-5.20" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/HTTP/Message/PSGI.pm blib/lib/HTTP/Message/PSGI.pm \
	  lib/HTTP/Server/PSGI.pm blib/lib/HTTP/Server/PSGI.pm \
	  lib/Plack.pm blib/lib/Plack.pm \
	  lib/Plack/App/CGIBin.pm blib/lib/Plack/App/CGIBin.pm \
	  lib/Plack/App/Cascade.pm blib/lib/Plack/App/Cascade.pm \
	  lib/Plack/App/Directory.pm blib/lib/Plack/App/Directory.pm \
	  lib/Plack/App/File.pm blib/lib/Plack/App/File.pm \
	  lib/Plack/App/PSGIBin.pm blib/lib/Plack/App/PSGIBin.pm \
	  lib/Plack/App/URLMap.pm blib/lib/Plack/App/URLMap.pm \
	  lib/Plack/App/WrapCGI.pm blib/lib/Plack/App/WrapCGI.pm \
	  lib/Plack/Builder.pm blib/lib/Plack/Builder.pm \
	  lib/Plack/Component.pm blib/lib/Plack/Component.pm \
	  lib/Plack/HTTPParser.pm blib/lib/Plack/HTTPParser.pm \
	  lib/Plack/HTTPParser/PP.pm blib/lib/Plack/HTTPParser/PP.pm \
	  lib/Plack/Handler.pm blib/lib/Plack/Handler.pm \
	  lib/Plack/Handler/Apache1.pm blib/lib/Plack/Handler/Apache1.pm \
	  lib/Plack/Handler/Apache2.pm blib/lib/Plack/Handler/Apache2.pm \
	  lib/Plack/Handler/Apache2/Registry.pm blib/lib/Plack/Handler/Apache2/Registry.pm \
	  lib/Plack/Handler/CGI.pm blib/lib/Plack/Handler/CGI.pm \
	  lib/Plack/Handler/FCGI.pm blib/lib/Plack/Handler/FCGI.pm \
	  lib/Plack/Handler/HTTP/Server/PSGI.pm blib/lib/Plack/Handler/HTTP/Server/PSGI.pm \
	  lib/Plack/Handler/Standalone.pm blib/lib/Plack/Handler/Standalone.pm \
	  lib/Plack/LWPish.pm blib/lib/Plack/LWPish.pm \
	  lib/Plack/Loader.pm blib/lib/Plack/Loader.pm \
	  lib/Plack/Loader/Delayed.pm blib/lib/Plack/Loader/Delayed.pm \
	  lib/Plack/Loader/Restarter.pm blib/lib/Plack/Loader/Restarter.pm \
	  lib/Plack/Loader/Shotgun.pm blib/lib/Plack/Loader/Shotgun.pm \
	  lib/Plack/MIME.pm blib/lib/Plack/MIME.pm \
	  lib/Plack/Middleware.pm blib/lib/Plack/Middleware.pm \
	  lib/Plack/Middleware/AccessLog.pm blib/lib/Plack/Middleware/AccessLog.pm \
	  lib/Plack/Middleware/AccessLog/Timed.pm blib/lib/Plack/Middleware/AccessLog/Timed.pm \
	  lib/Plack/Middleware/Auth/Basic.pm blib/lib/Plack/Middleware/Auth/Basic.pm \
	  lib/Plack/Middleware/BufferedStreaming.pm blib/lib/Plack/Middleware/BufferedStreaming.pm \
	  lib/Plack/Middleware/Chunked.pm blib/lib/Plack/Middleware/Chunked.pm \
	  lib/Plack/Middleware/Conditional.pm blib/lib/Plack/Middleware/Conditional.pm \
	  lib/Plack/Middleware/ConditionalGET.pm blib/lib/Plack/Middleware/ConditionalGET.pm \
	  lib/Plack/Middleware/ContentLength.pm blib/lib/Plack/Middleware/ContentLength.pm \
	  lib/Plack/Middleware/ContentMD5.pm blib/lib/Plack/Middleware/ContentMD5.pm \
	  lib/Plack/Middleware/ErrorDocument.pm blib/lib/Plack/Middleware/ErrorDocument.pm \
	  lib/Plack/Middleware/HTTPExceptions.pm blib/lib/Plack/Middleware/HTTPExceptions.pm \
	  lib/Plack/Middleware/Head.pm blib/lib/Plack/Middleware/Head.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/Plack/Middleware/IIS6ScriptNameFix.pm blib/lib/Plack/Middleware/IIS6ScriptNameFix.pm \
	  lib/Plack/Middleware/IIS7KeepAliveFix.pm blib/lib/Plack/Middleware/IIS7KeepAliveFix.pm \
	  lib/Plack/Middleware/JSONP.pm blib/lib/Plack/Middleware/JSONP.pm \
	  lib/Plack/Middleware/LighttpdScriptNameFix.pm blib/lib/Plack/Middleware/LighttpdScriptNameFix.pm \
	  lib/Plack/Middleware/Lint.pm blib/lib/Plack/Middleware/Lint.pm \
	  lib/Plack/Middleware/Log4perl.pm blib/lib/Plack/Middleware/Log4perl.pm \
	  lib/Plack/Middleware/LogDispatch.pm blib/lib/Plack/Middleware/LogDispatch.pm \
	  lib/Plack/Middleware/NullLogger.pm blib/lib/Plack/Middleware/NullLogger.pm \
	  lib/Plack/Middleware/RearrangeHeaders.pm blib/lib/Plack/Middleware/RearrangeHeaders.pm \
	  lib/Plack/Middleware/Recursive.pm blib/lib/Plack/Middleware/Recursive.pm \
	  lib/Plack/Middleware/Refresh.pm blib/lib/Plack/Middleware/Refresh.pm \
	  lib/Plack/Middleware/Runtime.pm blib/lib/Plack/Middleware/Runtime.pm \
	  lib/Plack/Middleware/SimpleContentFilter.pm blib/lib/Plack/Middleware/SimpleContentFilter.pm \
	  lib/Plack/Middleware/SimpleLogger.pm blib/lib/Plack/Middleware/SimpleLogger.pm \
	  lib/Plack/Middleware/StackTrace.pm blib/lib/Plack/Middleware/StackTrace.pm \
	  lib/Plack/Middleware/Static.pm blib/lib/Plack/Middleware/Static.pm \
	  lib/Plack/Middleware/XFramework.pm blib/lib/Plack/Middleware/XFramework.pm \
	  lib/Plack/Middleware/XSendfile.pm blib/lib/Plack/Middleware/XSendfile.pm \
	  lib/Plack/Request.pm blib/lib/Plack/Request.pm \
	  lib/Plack/Request/Upload.pm blib/lib/Plack/Request/Upload.pm \
	  lib/Plack/Response.pm blib/lib/Plack/Response.pm \
	  lib/Plack/Runner.pm blib/lib/Plack/Runner.pm \
	  lib/Plack/TempBuffer.pm blib/lib/Plack/TempBuffer.pm \
	  lib/Plack/Test.pm blib/lib/Plack/Test.pm \
	  lib/Plack/Test/MockHTTP.pm blib/lib/Plack/Test/MockHTTP.pm \
	  lib/Plack/Test/Server.pm blib/lib/Plack/Test/Server.pm \
	  lib/Plack/Test/Suite.pm blib/lib/Plack/Test/Suite.pm \
	  lib/Plack/Util.pm blib/lib/Plack/Util.pm \
	  lib/Plack/Util/Accessor.pm blib/lib/Plack/Util/Accessor.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:
config::
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)'\'')' -- \
	  share/face.jpg $(INST_LIB)/auto/share/dist/$(DISTNAME)/face.jpg \
	  share/baybridge.jpg $(INST_LIB)/auto/share/dist/$(DISTNAME)/baybridge.jpg \
	  share/#foo $(INST_LIB)/auto/share/dist/$(DISTNAME)/#foo 


# End.
