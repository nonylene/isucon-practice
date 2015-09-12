# This Makefile is for the DBI extension to perl.
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

#     ABSTRACT_FROM => q[DBI.pm]
#     AUTHOR => [q[Tim Bunce (dbi-users@perl.org)]]
#     BUILD_REQUIRES => { ExtUtils::MakeMaker=>q[6.48], Test::Simple=>q[0.90] }
#     CONFIGURE_REQUIRES => {  }
#     DEFINE => q[ -W -Wall -Wpointer-arith -Wbad-function-cast -Wno-comment -Wno-sign-compare -Wno-cast-qual -Wmissing-noreturn -Wno-unused-parameter -DDBI_NO_THREADS]
#     DIR => []
#     EXE_FILES => [q[dbiproxy], q[dbiprof], q[dbilogstrip]]
#     LICENSE => q[perl]
#     META_MERGE => { suggests=>{ Net::Daemon=>q[0], Clone=>q[0.34], MLDBM=>q[0], SQL::Statement=>q[1.402], RPC::PlServer=>q[0.2001], DB_File=>q[0] }, conflicts=>{ DBD::PO=>q[2.10], DBD::Google=>q[0.51], DBD::Amazon=>q[0.10], SQL::Statement=>q[1.33], DBD::CSV=>q[0.36], DBD::AnyData=>q[0.110], DBD::RAM=>q[0.072] }, resources=>{ repository=>q[https://github.com/perl5-dbi/dbi], homepage=>q[http://dbi.perl.org/], license=>q[http://dev.perl.org/licenses/], MailingList=>q[mailto:dbi-dev@perl.org] } }
#     MIN_PERL_VERSION => q[5.008]
#     NAME => q[DBI]
#     PREREQ_PM => { Test::Simple=>q[0.90], ExtUtils::MakeMaker=>q[6.48] }
#     TEST_REQUIRES => {  }
#     VERSION_FROM => q[DBI.pm]
#     clean => { FILES=>q[$(DISTVNAME) Perl.xsi t/zv*_*.t dbi__null_test_tmp* test_output_* dbiproxy dbiprof dbilogstrip dbiproxy.*log dbitrace.log dbi*.prof ndtest.prt] }
#     dist => { SUFFIX=>q[gz], DIST_DEFAULT=>q[clean distcheck disttest tardist], COMPRESS=>q[gzip -v9], PREOP=>q[$(MAKE) -f Makefile.old distdir] }
#     dynamic_lib => { OTHERLDFLAGS=>q[0] }

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
NAME = DBI
NAME_SYM = DBI
VERSION = 1.631
VERSION_MACRO = VERSION
VERSION_SYM = 1_631
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 1.631
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
FULLEXT = DBI
BASEEXT = DBI
PARENT_NAME = 
DLBASE = $(BASEEXT)
VERSION_FROM = DBI.pm
DEFINE =  -W -Wall -Wpointer-arith -Wbad-function-cast -Wno-comment -Wno-sign-compare -Wno-cast-qual -Wmissing-noreturn -Wno-unused-parameter -DDBI_NO_THREADS
OBJECT = $(BASEEXT)$(OBJ_EXT)
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = DBI.xs \
	Perl.xs
C_FILES  = DBI.c \
	Perl.c
O_FILES  = DBI.o \
	Perl.o
H_FILES  = DBIXS.h \
	Driver_xst.h \
	dbd_xsh.h \
	dbi_sql.h \
	dbipport.h \
	dbivport.h \
	dbixs_rev.h
MAN1PODS = 
MAN3PODS = 

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)
INST_ARCHLIBDIR  = $(INST_ARCHLIB)

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = $(INST_ARCHAUTODIR)/$(BASEEXT)$(LIB_EXT)
INST_DYNAMIC     = $(INST_ARCHAUTODIR)/$(DLBASE).$(DLEXT)
INST_BOOT        = $(INST_ARCHAUTODIR)/$(BASEEXT).bs

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = DBI.pm \
	DBIXS.h \
	Driver.xst \
	Driver_xst.h \
	dbd_xsh.h \
	dbi_sql.h \
	dbipport.h \
	dbivport.h \
	dbixs_rev.h \
	dbixs_rev.pl \
	lib/Bundle/DBI.pm \
	lib/DBD/DBM.pm \
	lib/DBD/ExampleP.pm \
	lib/DBD/File.pm \
	lib/DBD/File/Developers.pod \
	lib/DBD/File/HowTo.pod \
	lib/DBD/File/Roadmap.pod \
	lib/DBD/Gofer.pm \
	lib/DBD/Gofer/Policy/Base.pm \
	lib/DBD/Gofer/Policy/classic.pm \
	lib/DBD/Gofer/Policy/pedantic.pm \
	lib/DBD/Gofer/Policy/rush.pm \
	lib/DBD/Gofer/Transport/Base.pm \
	lib/DBD/Gofer/Transport/corostream.pm \
	lib/DBD/Gofer/Transport/null.pm \
	lib/DBD/Gofer/Transport/pipeone.pm \
	lib/DBD/Gofer/Transport/stream.pm \
	lib/DBD/NullP.pm \
	lib/DBD/Proxy.pm \
	lib/DBD/Sponge.pm \
	lib/DBI/Const/GetInfo/ANSI.pm \
	lib/DBI/Const/GetInfo/ODBC.pm \
	lib/DBI/Const/GetInfoReturn.pm \
	lib/DBI/Const/GetInfoType.pm \
	lib/DBI/DBD.pm \
	lib/DBI/DBD/Metadata.pm \
	lib/DBI/DBD/SqlEngine.pm \
	lib/DBI/DBD/SqlEngine/Developers.pod \
	lib/DBI/DBD/SqlEngine/HowTo.pod \
	lib/DBI/FAQ.pm \
	lib/DBI/Gofer/Execute.pm \
	lib/DBI/Gofer/Request.pm \
	lib/DBI/Gofer/Response.pm \
	lib/DBI/Gofer/Serializer/Base.pm \
	lib/DBI/Gofer/Serializer/DataDumper.pm \
	lib/DBI/Gofer/Serializer/Storable.pm \
	lib/DBI/Gofer/Transport/Base.pm \
	lib/DBI/Gofer/Transport/pipeone.pm \
	lib/DBI/Gofer/Transport/stream.pm \
	lib/DBI/Profile.pm \
	lib/DBI/ProfileData.pm \
	lib/DBI/ProfileDumper.pm \
	lib/DBI/ProfileDumper/Apache.pm \
	lib/DBI/ProfileSubs.pm \
	lib/DBI/ProxyServer.pm \
	lib/DBI/PurePerl.pm \
	lib/DBI/SQL/Nano.pm \
	lib/DBI/Util/CacheMemory.pm \
	lib/DBI/Util/_accessor.pm \
	lib/DBI/W32ODBC.pm \
	lib/Win32/DBIODBC.pm

PM_TO_BLIB = DBI.pm \
	$(INST_LIB)/DBI.pm \
	DBIXS.h \
	$(INST_ARCHLIB)/auto/$(FULLEXT)/DBIXS.h \
	Driver.xst \
	$(INST_ARCHLIB)/auto/$(FULLEXT)/Driver.xst \
	Driver_xst.h \
	$(INST_ARCHLIB)/auto/$(FULLEXT)/Driver_xst.h \
	dbd_xsh.h \
	$(INST_ARCHLIB)/auto/$(FULLEXT)/dbd_xsh.h \
	dbi_sql.h \
	$(INST_ARCHLIB)/auto/$(FULLEXT)/dbi_sql.h \
	dbipport.h \
	$(INST_ARCHLIB)/auto/$(FULLEXT)/dbipport.h \
	dbivport.h \
	$(INST_ARCHLIB)/auto/$(FULLEXT)/dbivport.h \
	dbixs_rev.h \
	$(INST_ARCHLIB)/auto/$(FULLEXT)/dbixs_rev.h \
	dbixs_rev.pl \
	$(INST_LIB)/dbixs_rev.pl \
	lib/Bundle/DBI.pm \
	blib/lib/Bundle/DBI.pm \
	lib/DBD/DBM.pm \
	blib/lib/DBD/DBM.pm \
	lib/DBD/ExampleP.pm \
	blib/lib/DBD/ExampleP.pm \
	lib/DBD/File.pm \
	blib/lib/DBD/File.pm \
	lib/DBD/File/Developers.pod \
	blib/lib/DBD/File/Developers.pod \
	lib/DBD/File/HowTo.pod \
	blib/lib/DBD/File/HowTo.pod \
	lib/DBD/File/Roadmap.pod \
	blib/lib/DBD/File/Roadmap.pod \
	lib/DBD/Gofer.pm \
	blib/lib/DBD/Gofer.pm \
	lib/DBD/Gofer/Policy/Base.pm \
	blib/lib/DBD/Gofer/Policy/Base.pm \
	lib/DBD/Gofer/Policy/classic.pm \
	blib/lib/DBD/Gofer/Policy/classic.pm \
	lib/DBD/Gofer/Policy/pedantic.pm \
	blib/lib/DBD/Gofer/Policy/pedantic.pm \
	lib/DBD/Gofer/Policy/rush.pm \
	blib/lib/DBD/Gofer/Policy/rush.pm \
	lib/DBD/Gofer/Transport/Base.pm \
	blib/lib/DBD/Gofer/Transport/Base.pm \
	lib/DBD/Gofer/Transport/corostream.pm \
	blib/lib/DBD/Gofer/Transport/corostream.pm \
	lib/DBD/Gofer/Transport/null.pm \
	blib/lib/DBD/Gofer/Transport/null.pm \
	lib/DBD/Gofer/Transport/pipeone.pm \
	blib/lib/DBD/Gofer/Transport/pipeone.pm \
	lib/DBD/Gofer/Transport/stream.pm \
	blib/lib/DBD/Gofer/Transport/stream.pm \
	lib/DBD/NullP.pm \
	blib/lib/DBD/NullP.pm \
	lib/DBD/Proxy.pm \
	blib/lib/DBD/Proxy.pm \
	lib/DBD/Sponge.pm \
	blib/lib/DBD/Sponge.pm \
	lib/DBI/Const/GetInfo/ANSI.pm \
	blib/lib/DBI/Const/GetInfo/ANSI.pm \
	lib/DBI/Const/GetInfo/ODBC.pm \
	blib/lib/DBI/Const/GetInfo/ODBC.pm \
	lib/DBI/Const/GetInfoReturn.pm \
	blib/lib/DBI/Const/GetInfoReturn.pm \
	lib/DBI/Const/GetInfoType.pm \
	blib/lib/DBI/Const/GetInfoType.pm \
	lib/DBI/DBD.pm \
	blib/lib/DBI/DBD.pm \
	lib/DBI/DBD/Metadata.pm \
	blib/lib/DBI/DBD/Metadata.pm \
	lib/DBI/DBD/SqlEngine.pm \
	blib/lib/DBI/DBD/SqlEngine.pm \
	lib/DBI/DBD/SqlEngine/Developers.pod \
	blib/lib/DBI/DBD/SqlEngine/Developers.pod \
	lib/DBI/DBD/SqlEngine/HowTo.pod \
	blib/lib/DBI/DBD/SqlEngine/HowTo.pod \
	lib/DBI/FAQ.pm \
	blib/lib/DBI/FAQ.pm \
	lib/DBI/Gofer/Execute.pm \
	blib/lib/DBI/Gofer/Execute.pm \
	lib/DBI/Gofer/Request.pm \
	blib/lib/DBI/Gofer/Request.pm \
	lib/DBI/Gofer/Response.pm \
	blib/lib/DBI/Gofer/Response.pm \
	lib/DBI/Gofer/Serializer/Base.pm \
	blib/lib/DBI/Gofer/Serializer/Base.pm \
	lib/DBI/Gofer/Serializer/DataDumper.pm \
	blib/lib/DBI/Gofer/Serializer/DataDumper.pm \
	lib/DBI/Gofer/Serializer/Storable.pm \
	blib/lib/DBI/Gofer/Serializer/Storable.pm \
	lib/DBI/Gofer/Transport/Base.pm \
	blib/lib/DBI/Gofer/Transport/Base.pm \
	lib/DBI/Gofer/Transport/pipeone.pm \
	blib/lib/DBI/Gofer/Transport/pipeone.pm \
	lib/DBI/Gofer/Transport/stream.pm \
	blib/lib/DBI/Gofer/Transport/stream.pm \
	lib/DBI/Profile.pm \
	blib/lib/DBI/Profile.pm \
	lib/DBI/ProfileData.pm \
	blib/lib/DBI/ProfileData.pm \
	lib/DBI/ProfileDumper.pm \
	blib/lib/DBI/ProfileDumper.pm \
	lib/DBI/ProfileDumper/Apache.pm \
	blib/lib/DBI/ProfileDumper/Apache.pm \
	lib/DBI/ProfileSubs.pm \
	blib/lib/DBI/ProfileSubs.pm \
	lib/DBI/ProxyServer.pm \
	blib/lib/DBI/ProxyServer.pm \
	lib/DBI/PurePerl.pm \
	blib/lib/DBI/PurePerl.pm \
	lib/DBI/SQL/Nano.pm \
	blib/lib/DBI/SQL/Nano.pm \
	lib/DBI/Util/CacheMemory.pm \
	blib/lib/DBI/Util/CacheMemory.pm \
	lib/DBI/Util/_accessor.pm \
	blib/lib/DBI/Util/_accessor.pm \
	lib/DBI/W32ODBC.pm \
	blib/lib/DBI/W32ODBC.pm \
	lib/Win32/DBIODBC.pm \
	blib/lib/Win32/DBIODBC.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.98
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$$$ARGV[0], $$$$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:

XSUBPPDIR = /home/isucon/.local/perl/lib/5.20.0/ExtUtils
XSUBPP = $(XSUBPPDIR)$(DFSEP)xsubpp
XSUBPPRUN = $(PERLRUN) $(XSUBPP)
XSPROTOARG = 
XSUBPPDEPS = /home/isucon/.local/perl/lib/5.20.0/ExtUtils/typemap typemap $(XSUBPP)
XSUBPPARGS = -typemap /home/isucon/.local/perl/lib/5.20.0/ExtUtils/typemap -typemap typemap
XSUBPP_EXTRA_ARGS =


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
COMPRESS = gzip -v9
SUFFIX = .gz
SHAR = shar
PREOP = $(MAKE) -f Makefile.old distdir
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = clean distcheck disttest tardist
DISTNAME = DBI
DISTVNAME = DBI-1.631


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:

CCFLAGS = -fwrapv -fno-strict-aliasing -pipe -fstack-protector -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
OPTIMIZE = -O2 -g
PERLTYPE = 
MPOLLUTE = 


# --- MakeMaker const_loadlibs section:

# DBI might depend on some other libraries:
# See ExtUtils::Liblist for details
#


# --- MakeMaker const_cccmd section:
CCCMD = $(CC) -c $(PASTHRU_INC) $(INC) \
	$(CCFLAGS) $(OPTIMIZE) \
	$(PERLTYPE) $(MPOLLUTE) $(DEFINE_VERSION) \
	$(XS_DEFINE_VERSION)

# --- MakeMaker post_constants section:

# --- This section was generated by DBI::DBD::dbd_postamble()
DBI_INSTARCH_DIR=.
DBI_DRIVER_XST=./Driver.xst

# The main dependency (technically correct but probably not used)
Perl.c: Perl.xsi

# This dependency is needed since MakeMaker uses the .xs.o rule
Perl$(OBJ_EXT): Perl.xsi

Perl.xsi: $(DBI_DRIVER_XST) ./Driver_xst.h
	$(PERL) -p -e "s/~DRIVER~/Perl/g" $(DBI_DRIVER_XST) > Perl.xsi

# ---

dbixs_rev.h: DBIXS.h Driver_xst.h dbipport.h dbivport.h dbixs_rev.pl
	$(PERL) dbixs_rev.pl

DBI.c: Perl$(OBJ_EXT)

# make Changes file available as installed pod docs "perldoc DBI::Changes"
inst_libdbi = blib/lib/DBI
changes_pm = blib/lib/DBI/Changes.pm


config :: $(changes_pm)
	$(NOECHO) $(NOOP)

$(changes_pm): Changes
	$(MKPATH) $(inst_libdbi)
	$(RM_F) $(changes_pm)
	$(CP) Changes $(changes_pm)

ptest:  all
	prove --blib --jobs 8 --shuffle

faq:
	: checkin any local changes not already checked in before overwriting
	svn commit --message "dbi.tiddlyspot.com FAQ update" dbi.tiddlyspot.com.html
	wget --ignore-length --output-document=dbi.tiddlyspot.com.html --timestamping http://dbi.tiddlyspot.com/download
	svn commit --message "dbi.tiddlyspot.com FAQ update" dbi.tiddlyspot.com.html

checkkeywords:
	$(RM_RF) blib
	find . -type f \( -name .svn -prune -o -name \*.pm -o -name \*.PL -o -name \*.pl \) \
            -exec bash -c '[ -z "$$(svn pg svn:keywords {})" ] && echo svn propset svn:keywords \"Id Revision\" {}' \;

checkpod:
	$(RM_RF) blib
	find . -type f \( -name .svn -prune -o -name \*.pm -o -name \*.PL -o -name \*.pl \) \
            -exec podchecker {} \; 2>&1 | grep -v 'pod syntax OK'


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	OPTIMIZE="$(OPTIMIZE)"\
	PREFIX="$(PREFIX)"\
	INSTALL_BASE="$(INSTALL_BASE)"\
	PASTHRU_DEFINE="$(PASTHRU_DEFINE)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:

.c.i:
	cc  -E -c $(PASTHRU_INC) $(INC) \
	$(CCFLAGS) $(OPTIMIZE) \
	$(PERLTYPE) $(MPOLLUTE) $(DEFINE_VERSION) \
	$(XS_DEFINE_VERSION) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.c > $*.i

.c.s:
	$(CCCMD) -S $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.c

.c$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.c

.cpp$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.cpp

.cxx$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.cxx

.cc$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.cc

.C$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.C


# --- MakeMaker xs_c section:

.xs.c:
	$(XSUBPPRUN) $(XSPROTOARG) $(XSUBPPARGS) $(XSUBPP_EXTRA_ARGS) $*.xs > $*.xsc && $(MV) $*.xsc $*.c


# --- MakeMaker xs_o section:

.xs$(OBJ_EXT):
	$(XSUBPPRUN) $(XSPROTOARG) $(XSUBPPARGS) $*.xs > $*.xsc && $(MV) $*.xsc $*.c
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.c


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

$(O_FILES): $(H_FILES)

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
BOOTSTRAP = $(BASEEXT).bs

# As Mkbootstrap might not write a file (if none is required)
# we use touch to prevent make continually trying to remake it.
# The DynaLoader only reads a non-empty file.
$(BOOTSTRAP) : $(FIRST_MAKEFILE) $(BOOTDEP) $(INST_ARCHAUTODIR)$(DFSEP).exists
	$(NOECHO) $(ECHO) "Running Mkbootstrap for $(NAME) ($(BSLOADLIBS))"
	$(NOECHO) $(PERLRUN) \
		"-MExtUtils::Mkbootstrap" \
		-e "Mkbootstrap('$(BASEEXT)','$(BSLOADLIBS)');"
	$(NOECHO) $(TOUCH) $@
	$(CHMOD) $(PERM_RW) $@


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(BOOTSTRAP) $(INST_DYNAMIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_lib section:

# This section creates the dynamically loadable $(INST_DYNAMIC)
# from $(OBJECT) and possibly $(MYEXTLIB).
ARMAYBE = :
OTHERLDFLAGS = 
INST_DYNAMIC_DEP = 
INST_DYNAMIC_FIX = 

$(INST_DYNAMIC): $(OBJECT) $(MYEXTLIB) $(INST_ARCHAUTODIR)$(DFSEP).exists $(EXPORT_LIST) $(PERL_ARCHIVE) $(PERL_ARCHIVE_AFTER) $(INST_DYNAMIC_DEP)
	$(RM_F) $@
	$(LD)  $(LDDLFLAGS) $(LDFROM) $(OTHERLDFLAGS) -o $@ $(MYEXTLIB)	\
	  $(PERL_ARCHIVE) $(LDLOADLIBS) $(PERL_ARCHIVE_AFTER) $(EXPORT_LIST)	\
	  $(INST_DYNAMIC_FIX)
	$(CHMOD) $(PERM_RWX) $@
	$(NOECHO) $(RM_RF) $(BOOTSTRAP)
	- $(CP_NONEMPTY) $(BOOTSTRAP) $(INST_BOOT) $(PERM_RW)


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:

$(INST_STATIC) : $(OBJECT) $(MYEXTLIB) $(INST_ARCHAUTODIR)$(DFSEP).exists
	$(RM_RF) $@
	$(FULL_AR) $(AR_STATIC_ARGS) $@ $(OBJECT) && $(RANLIB) $@
	$(CHMOD) $(PERM_RWX) $@
	$(NOECHO) $(ECHO) "$(EXTRALIBS)" > $(INST_ARCHAUTODIR)/extralibs.ld


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all 
	$(NOECHO) $(NOOP)




# --- MakeMaker processPL section:

all :: dbilogstrip
	$(NOECHO) $(NOOP)

dbilogstrip :: dbilogstrip.PL pm_to_blib
	$(PERLRUNINST) dbilogstrip.PL dbilogstrip

all :: dbiprof
	$(NOECHO) $(NOOP)

dbiprof :: dbiprof.PL pm_to_blib
	$(PERLRUNINST) dbiprof.PL dbiprof

all :: dbiproxy
	$(NOECHO) $(NOOP)

dbiproxy :: dbiproxy.PL pm_to_blib
	$(PERLRUNINST) dbiproxy.PL dbiproxy


# --- MakeMaker installbin section:

EXE_FILES = dbiproxy dbiprof dbilogstrip

pure_all :: $(INST_SCRIPT)/dbiproxy $(INST_SCRIPT)/dbilogstrip $(INST_SCRIPT)/dbiprof
	$(NOECHO) $(NOOP)

realclean ::
	$(RM_F) \
	  $(INST_SCRIPT)/dbiproxy $(INST_SCRIPT)/dbilogstrip \
	  $(INST_SCRIPT)/dbiprof 

$(INST_SCRIPT)/dbiproxy : dbiproxy $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/dbiproxy
	$(CP) dbiproxy $(INST_SCRIPT)/dbiproxy
	$(FIXIN) $(INST_SCRIPT)/dbiproxy
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/dbiproxy

$(INST_SCRIPT)/dbilogstrip : dbilogstrip $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/dbilogstrip
	$(CP) dbilogstrip $(INST_SCRIPT)/dbilogstrip
	$(FIXIN) $(INST_SCRIPT)/dbilogstrip
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/dbilogstrip

$(INST_SCRIPT)/dbiprof : dbiprof $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/dbiprof
	$(CP) dbiprof $(INST_SCRIPT)/dbiprof
	$(FIXIN) $(INST_SCRIPT)/dbiprof
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/dbiprof



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
	  *perl.core DBI.c \
	  MYMETA.json MYMETA.yml \
	  Perl.c blibdirs.ts \
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
	  $(DISTVNAME) Perl.xsi \
	  blib dbi*.prof \
	  dbi__null_test_tmp* dbilogstrip \
	  dbiprof dbiproxy \
	  dbiproxy.*log dbitrace.log \
	  ndtest.prt t/zv*_*.t \
	  test_output_* 
	  $(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(FIRST_MAKEFILE) $(MAKEFILE_OLD) \
	  $(OBJECT) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile : create_distdir
	$(NOECHO) $(ECHO) Generating META.yml
	$(NOECHO) $(ECHO) '---' > META_new.yml
	$(NOECHO) $(ECHO) 'abstract: '\''Database independent interface for Perl'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'author:' >> META_new.yml
	$(NOECHO) $(ECHO) '  - '\''Tim Bunce (dbi-users@perl.org)'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'build_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  ExtUtils::MakeMaker: '\''6.48'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  Test::Simple: '\''0.90'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'configure_requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  ExtUtils::MakeMaker: '\''0'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'conflicts:' >> META_new.yml
	$(NOECHO) $(ECHO) '  DBD::Amazon: '\''0.10'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  DBD::AnyData: '\''0.110'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  DBD::CSV: '\''0.36'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  DBD::Google: '\''0.51'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  DBD::PO: '\''2.10'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  DBD::RAM: '\''0.072'\''' >> META_new.yml
	$(NOECHO) $(ECHO) '  SQL::Statement: '\''1.33'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'dynamic_config: 1' >> META_new.yml
	$(NOECHO) $(ECHO) 'generated_by: '\''ExtUtils::MakeMaker version 6.98, CPAN::Meta::Converter version 2.142060'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'license: perl' >> META_new.yml
	$(NOECHO) $(ECHO) 'meta-spec:' >> META_new.yml
	$(NOECHO) $(ECHO) '  url: http://module-build.sourceforge.net/META-spec-v1.4.html' >> META_new.yml
	$(NOECHO) $(ECHO) '  version: '\''1.4'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'name: DBI' >> META_new.yml
	$(NOECHO) $(ECHO) 'no_index:' >> META_new.yml
	$(NOECHO) $(ECHO) '  directory:' >> META_new.yml
	$(NOECHO) $(ECHO) '    - t' >> META_new.yml
	$(NOECHO) $(ECHO) '    - inc' >> META_new.yml
	$(NOECHO) $(ECHO) 'requires:' >> META_new.yml
	$(NOECHO) $(ECHO) '  perl: '\''5.008'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'resources:' >> META_new.yml
	$(NOECHO) $(ECHO) '  MailingList: mailto:dbi-dev@perl.org' >> META_new.yml
	$(NOECHO) $(ECHO) '  homepage: http://dbi.perl.org/' >> META_new.yml
	$(NOECHO) $(ECHO) '  license: http://dev.perl.org/licenses/' >> META_new.yml
	$(NOECHO) $(ECHO) '  repository: https://github.com/perl5-dbi/dbi' >> META_new.yml
	$(NOECHO) $(ECHO) 'version: '\''1.631'\''' >> META_new.yml
	$(NOECHO) $(ECHO) 'x_suggests:' >> META_new.yml
	$(NOECHO) $(ECHO) '  Clone: 0.34' >> META_new.yml
	$(NOECHO) $(ECHO) '  DB_File: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  MLDBM: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  Net::Daemon: 0' >> META_new.yml
	$(NOECHO) $(ECHO) '  RPC::PlServer: 0.2001' >> META_new.yml
	$(NOECHO) $(ECHO) '  SQL::Statement: 1.402' >> META_new.yml
	-$(NOECHO) $(MV) META_new.yml $(DISTVNAME)/META.yml
	$(NOECHO) $(ECHO) Generating META.json
	$(NOECHO) $(ECHO) '{' > META_new.json
	$(NOECHO) $(ECHO) '   "abstract" : "Database independent interface for Perl",' >> META_new.json
	$(NOECHO) $(ECHO) '   "author" : [' >> META_new.json
	$(NOECHO) $(ECHO) '      "Tim Bunce (dbi-users@perl.org)"' >> META_new.json
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
	$(NOECHO) $(ECHO) '   "name" : "DBI",' >> META_new.json
	$(NOECHO) $(ECHO) '   "no_index" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "directory" : [' >> META_new.json
	$(NOECHO) $(ECHO) '         "t",' >> META_new.json
	$(NOECHO) $(ECHO) '         "inc"' >> META_new.json
	$(NOECHO) $(ECHO) '      ]' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "prereqs" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "build" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "ExtUtils::MakeMaker" : "6.48",' >> META_new.json
	$(NOECHO) $(ECHO) '            "Test::Simple" : "0.90"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "configure" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "ExtUtils::MakeMaker" : "0"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "runtime" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "conflicts" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "DBD::Amazon" : "0.10",' >> META_new.json
	$(NOECHO) $(ECHO) '            "DBD::AnyData" : "0.110",' >> META_new.json
	$(NOECHO) $(ECHO) '            "DBD::CSV" : "0.36",' >> META_new.json
	$(NOECHO) $(ECHO) '            "DBD::Google" : "0.51",' >> META_new.json
	$(NOECHO) $(ECHO) '            "DBD::PO" : "2.10",' >> META_new.json
	$(NOECHO) $(ECHO) '            "DBD::RAM" : "0.072",' >> META_new.json
	$(NOECHO) $(ECHO) '            "SQL::Statement" : "1.33"' >> META_new.json
	$(NOECHO) $(ECHO) '         },' >> META_new.json
	$(NOECHO) $(ECHO) '         "requires" : {' >> META_new.json
	$(NOECHO) $(ECHO) '            "perl" : "5.008"' >> META_new.json
	$(NOECHO) $(ECHO) '         }' >> META_new.json
	$(NOECHO) $(ECHO) '      }' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "release_status" : "stable",' >> META_new.json
	$(NOECHO) $(ECHO) '   "resources" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "homepage" : "http://dbi.perl.org/",' >> META_new.json
	$(NOECHO) $(ECHO) '      "license" : [' >> META_new.json
	$(NOECHO) $(ECHO) '         "http://dev.perl.org/licenses/"' >> META_new.json
	$(NOECHO) $(ECHO) '      ],' >> META_new.json
	$(NOECHO) $(ECHO) '      "repository" : {' >> META_new.json
	$(NOECHO) $(ECHO) '         "url" : "https://github.com/perl5-dbi/dbi"' >> META_new.json
	$(NOECHO) $(ECHO) '      },' >> META_new.json
	$(NOECHO) $(ECHO) '      "x_MailingList" : "mailto:dbi-dev@perl.org"' >> META_new.json
	$(NOECHO) $(ECHO) '   },' >> META_new.json
	$(NOECHO) $(ECHO) '   "version" : "1.631",' >> META_new.json
	$(NOECHO) $(ECHO) '   "x_suggests" : {' >> META_new.json
	$(NOECHO) $(ECHO) '      "Clone" : 0.34,' >> META_new.json
	$(NOECHO) $(ECHO) '      "DB_File" : 0,' >> META_new.json
	$(NOECHO) $(ECHO) '      "MLDBM" : 0,' >> META_new.json
	$(NOECHO) $(ECHO) '      "Net::Daemon" : 0,' >> META_new.json
	$(NOECHO) $(ECHO) '      "RPC::PlServer" : 0.2001,' >> META_new.json
	$(NOECHO) $(ECHO) '      "SQL::Statement" : 1.402' >> META_new.json
	$(NOECHO) $(ECHO) '   }' >> META_new.json
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
PERL_HDRS = \
        $(PERL_INC)/EXTERN.h            \
        $(PERL_INC)/INTERN.h            \
        $(PERL_INC)/XSUB.h            \
        $(PERL_INC)/av.h            \
        $(PERL_INC)/bitcount.h            \
        $(PERL_INC)/charclass_invlists.h            \
        $(PERL_INC)/config.h            \
        $(PERL_INC)/cop.h            \
        $(PERL_INC)/cv.h            \
        $(PERL_INC)/dosish.h            \
        $(PERL_INC)/embed.h            \
        $(PERL_INC)/embedvar.h            \
        $(PERL_INC)/fakesdio.h            \
        $(PERL_INC)/feature.h            \
        $(PERL_INC)/form.h            \
        $(PERL_INC)/git_version.h            \
        $(PERL_INC)/gv.h            \
        $(PERL_INC)/handy.h            \
        $(PERL_INC)/hv.h            \
        $(PERL_INC)/hv_func.h            \
        $(PERL_INC)/inline.h            \
        $(PERL_INC)/intrpvar.h            \
        $(PERL_INC)/iperlsys.h            \
        $(PERL_INC)/keywords.h            \
        $(PERL_INC)/l1_char_class_tab.h            \
        $(PERL_INC)/malloc_ctl.h            \
        $(PERL_INC)/metaconfig.h            \
        $(PERL_INC)/mg.h            \
        $(PERL_INC)/mg_data.h            \
        $(PERL_INC)/mg_raw.h            \
        $(PERL_INC)/mg_vtable.h            \
        $(PERL_INC)/mydtrace.h            \
        $(PERL_INC)/nostdio.h            \
        $(PERL_INC)/op.h            \
        $(PERL_INC)/op_reg_common.h            \
        $(PERL_INC)/opcode.h            \
        $(PERL_INC)/opnames.h            \
        $(PERL_INC)/overload.h            \
        $(PERL_INC)/pad.h            \
        $(PERL_INC)/parser.h            \
        $(PERL_INC)/patchlevel.h            \
        $(PERL_INC)/perl.h            \
        $(PERL_INC)/perlapi.h            \
        $(PERL_INC)/perlio.h            \
        $(PERL_INC)/perliol.h            \
        $(PERL_INC)/perlsdio.h            \
        $(PERL_INC)/perlvars.h            \
        $(PERL_INC)/perly.h            \
        $(PERL_INC)/pp.h            \
        $(PERL_INC)/pp_proto.h            \
        $(PERL_INC)/proto.h            \
        $(PERL_INC)/reentr.h            \
        $(PERL_INC)/regcharclass.h            \
        $(PERL_INC)/regcomp.h            \
        $(PERL_INC)/regexp.h            \
        $(PERL_INC)/regnodes.h            \
        $(PERL_INC)/scope.h            \
        $(PERL_INC)/sv.h            \
        $(PERL_INC)/thread.h            \
        $(PERL_INC)/time64.h            \
        $(PERL_INC)/time64_config.h            \
        $(PERL_INC)/uconfig.h            \
        $(PERL_INC)/unicode_constants.h            \
        $(PERL_INC)/unixish.h            \
        $(PERL_INC)/utf8.h            \
        $(PERL_INC)/utfebcdic.h            \
        $(PERL_INC)/util.h            \
        $(PERL_INC)/uudmap.h            \
        $(PERL_INC)/vutil.h            \
        $(PERL_INC)/warnings.h            

$(OBJECT) : $(PERL_HDRS)

Perl.c DBI.c : $(XSUBPPDEPS)


# --- MakeMaker makefile section:

$(OBJECT) : $(FIRST_MAKEFILE)

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
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: pure_all $(MAP_TARGET)
	PERL_DL_NONLAZY=1 ./$(MAP_TARGET) "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness($(TEST_VERBOSE), '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)
	PERL_DL_NONLAZY=1 ./$(MAP_TARGET) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

testdb_static :: pure_all $(MAP_TARGET)
	PERL_DL_NONLAZY=1 ./$(MAP_TARGET) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)



# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="$(VERSION)">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>Database independent interface for Perl</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>Tim Bunce (dbi-users@perl.org)</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <PERLCORE VERSION="5,008,0,0" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="x86_64-linux-5.20" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  DBI.pm $(INST_LIB)/DBI.pm \
	  DBIXS.h $(INST_ARCHLIB)/auto/$(FULLEXT)/DBIXS.h \
	  Driver.xst $(INST_ARCHLIB)/auto/$(FULLEXT)/Driver.xst \
	  Driver_xst.h $(INST_ARCHLIB)/auto/$(FULLEXT)/Driver_xst.h \
	  dbd_xsh.h $(INST_ARCHLIB)/auto/$(FULLEXT)/dbd_xsh.h \
	  dbi_sql.h $(INST_ARCHLIB)/auto/$(FULLEXT)/dbi_sql.h \
	  dbipport.h $(INST_ARCHLIB)/auto/$(FULLEXT)/dbipport.h \
	  dbivport.h $(INST_ARCHLIB)/auto/$(FULLEXT)/dbivport.h \
	  dbixs_rev.h $(INST_ARCHLIB)/auto/$(FULLEXT)/dbixs_rev.h \
	  dbixs_rev.pl $(INST_LIB)/dbixs_rev.pl \
	  lib/Bundle/DBI.pm blib/lib/Bundle/DBI.pm \
	  lib/DBD/DBM.pm blib/lib/DBD/DBM.pm \
	  lib/DBD/ExampleP.pm blib/lib/DBD/ExampleP.pm \
	  lib/DBD/File.pm blib/lib/DBD/File.pm \
	  lib/DBD/File/Developers.pod blib/lib/DBD/File/Developers.pod \
	  lib/DBD/File/HowTo.pod blib/lib/DBD/File/HowTo.pod \
	  lib/DBD/File/Roadmap.pod blib/lib/DBD/File/Roadmap.pod \
	  lib/DBD/Gofer.pm blib/lib/DBD/Gofer.pm \
	  lib/DBD/Gofer/Policy/Base.pm blib/lib/DBD/Gofer/Policy/Base.pm \
	  lib/DBD/Gofer/Policy/classic.pm blib/lib/DBD/Gofer/Policy/classic.pm \
	  lib/DBD/Gofer/Policy/pedantic.pm blib/lib/DBD/Gofer/Policy/pedantic.pm \
	  lib/DBD/Gofer/Policy/rush.pm blib/lib/DBD/Gofer/Policy/rush.pm \
	  lib/DBD/Gofer/Transport/Base.pm blib/lib/DBD/Gofer/Transport/Base.pm \
	  lib/DBD/Gofer/Transport/corostream.pm blib/lib/DBD/Gofer/Transport/corostream.pm \
	  lib/DBD/Gofer/Transport/null.pm blib/lib/DBD/Gofer/Transport/null.pm \
	  lib/DBD/Gofer/Transport/pipeone.pm blib/lib/DBD/Gofer/Transport/pipeone.pm \
	  lib/DBD/Gofer/Transport/stream.pm blib/lib/DBD/Gofer/Transport/stream.pm \
	  lib/DBD/NullP.pm blib/lib/DBD/NullP.pm \
	  lib/DBD/Proxy.pm blib/lib/DBD/Proxy.pm \
	  lib/DBD/Sponge.pm blib/lib/DBD/Sponge.pm \
	  lib/DBI/Const/GetInfo/ANSI.pm blib/lib/DBI/Const/GetInfo/ANSI.pm \
	  lib/DBI/Const/GetInfo/ODBC.pm blib/lib/DBI/Const/GetInfo/ODBC.pm \
	  lib/DBI/Const/GetInfoReturn.pm blib/lib/DBI/Const/GetInfoReturn.pm \
	  lib/DBI/Const/GetInfoType.pm blib/lib/DBI/Const/GetInfoType.pm \
	  lib/DBI/DBD.pm blib/lib/DBI/DBD.pm \
	  lib/DBI/DBD/Metadata.pm blib/lib/DBI/DBD/Metadata.pm \
	  lib/DBI/DBD/SqlEngine.pm blib/lib/DBI/DBD/SqlEngine.pm \
	  lib/DBI/DBD/SqlEngine/Developers.pod blib/lib/DBI/DBD/SqlEngine/Developers.pod \
	  lib/DBI/DBD/SqlEngine/HowTo.pod blib/lib/DBI/DBD/SqlEngine/HowTo.pod \
	  lib/DBI/FAQ.pm blib/lib/DBI/FAQ.pm \
	  lib/DBI/Gofer/Execute.pm blib/lib/DBI/Gofer/Execute.pm \
	  lib/DBI/Gofer/Request.pm blib/lib/DBI/Gofer/Request.pm \
	  lib/DBI/Gofer/Response.pm blib/lib/DBI/Gofer/Response.pm \
	  lib/DBI/Gofer/Serializer/Base.pm blib/lib/DBI/Gofer/Serializer/Base.pm \
	  lib/DBI/Gofer/Serializer/DataDumper.pm blib/lib/DBI/Gofer/Serializer/DataDumper.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/DBI/Gofer/Serializer/Storable.pm blib/lib/DBI/Gofer/Serializer/Storable.pm \
	  lib/DBI/Gofer/Transport/Base.pm blib/lib/DBI/Gofer/Transport/Base.pm \
	  lib/DBI/Gofer/Transport/pipeone.pm blib/lib/DBI/Gofer/Transport/pipeone.pm \
	  lib/DBI/Gofer/Transport/stream.pm blib/lib/DBI/Gofer/Transport/stream.pm \
	  lib/DBI/Profile.pm blib/lib/DBI/Profile.pm \
	  lib/DBI/ProfileData.pm blib/lib/DBI/ProfileData.pm \
	  lib/DBI/ProfileDumper.pm blib/lib/DBI/ProfileDumper.pm \
	  lib/DBI/ProfileDumper/Apache.pm blib/lib/DBI/ProfileDumper/Apache.pm \
	  lib/DBI/ProfileSubs.pm blib/lib/DBI/ProfileSubs.pm \
	  lib/DBI/ProxyServer.pm blib/lib/DBI/ProxyServer.pm \
	  lib/DBI/PurePerl.pm blib/lib/DBI/PurePerl.pm \
	  lib/DBI/SQL/Nano.pm blib/lib/DBI/SQL/Nano.pm \
	  lib/DBI/Util/CacheMemory.pm blib/lib/DBI/Util/CacheMemory.pm \
	  lib/DBI/Util/_accessor.pm blib/lib/DBI/Util/_accessor.pm \
	  lib/DBI/W32ODBC.pm blib/lib/DBI/W32ODBC.pm \
	  lib/Win32/DBIODBC.pm blib/lib/Win32/DBIODBC.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
