use strict;
use warnings FATAL => 'all';
use 5.006;

my %META = (
  name => 'Devel-GlobalDestruction',
  license => 'perl_5',
  prereqs => {
    configure => { requires => {
      'ExtUtils::MakeMaker'   => 0,
      'ExtUtils::CBuilder'    => 0.27,
    } },
    runtime => {
      requires => {
        'Sub::Exporter::Progressive' => '0.001011',
        'perl'                      => 5.006,
      },
    },
  },
  resources => {
    homepage => 'https://metacpan.org/release/Devel-GlobalDestruction',
    repository => {
      url => 'git://git.shadowcat.co.uk/p5sagit/Devel-GlobalDestruction.git',
      web => 'http://git.shadowcat.co.uk/gitweb/gitweb.cgi?p=p5sagit/Devel-GlobalDestruction.git',
      type => 'git',
    },
    bugtracker => {
      web => 'https://rt.cpan.org/Public/Dist/Display.html?Name=Devel-GlobalDestruction',
      mailto => 'bug-Devel-GlobalDestruction@rt.cpan.org',
    },
    license => [ 'http://dev.perl.org/licenses/' ],
  },
  no_index => {
    directory => [ 't', 'xt' ]
  },
);

my %MM_ARGS = (
  PREREQ_PM => {
    ( (defined ${^GLOBAL_PHASE} or parse_args()->{PUREPERL_ONLY} or !can_xs() )
      ? ()
      : ('Devel::GlobalDestruction::XS' => 0)
    ),
  },
);

use ExtUtils::MakeMaker;
BEGIN { if ( $^O eq 'cygwin' ) {
  require ExtUtils::MM_Cygwin;
  require ExtUtils::MM_Win32;
  if ( ! defined(&ExtUtils::MM_Cygwin::maybe_command) ) {
    *ExtUtils::MM_Cygwin::maybe_command = sub {
      my ($self, $file) = @_;
      if ($file =~ m{^/cygdrive/}i and ExtUtils::MM_Win32->can('maybe_command')) {
        ExtUtils::MM_Win32->maybe_command($file);
      } else {
        ExtUtils::MM_Unix->maybe_command($file);
      }
    }
  }
}}

use Text::ParseWords;

sub parse_args {
  # copied from EUMM
  ExtUtils::MakeMaker::parse_args(
    my $tmp = {},
    Text::ParseWords::shellwords($ENV{PERL_MM_OPT} || ''),
    @ARGV,
  );
  return $tmp->{ARGS} || {};
}

if (eval { require Devel::GlobalDestruction }
    && Devel::GlobalDestruction->VERSION < 0.10) {
  package MY;
  no warnings 'once';

  *install = sub {
    my $self = shift;
    return '
pure_site_install ::
	$(NOECHO) $(RM_F) ' . $self->quote_literal(
      $self->catfile('$(DESTINSTALLSITEARCH)', 'Devel', 'GlobalDestruction.pm')
    ) . "\n" . $self->SUPER::install;
  };
}

# can we locate a (the) C compiler
sub can_cc {
  my @chunks = split(/ /, $Config::Config{cc}) or return;

  # $Config{cc} may contain args; try to find out the program part
  while (@chunks) {
    return can_run("@chunks") || (pop(@chunks), next);
  }

  return;
}

# check if we can run some command
sub can_run {
  my ($cmd) = @_;

  return $cmd if -x $cmd;
  if (my $found_cmd = MM->maybe_command($cmd)) {
    return $found_cmd;
  }

  require File::Spec;
  for my $dir ((split /$Config::Config{path_sep}/, $ENV{PATH}), '.') {
    next if $dir eq '';
    my $abs = File::Spec->catfile($dir, $cmd);
    return $abs if (-x $abs or $abs = MM->maybe_command($abs));
  }

  return;
}

# Can our C compiler environment build XS files
sub can_xs {
  # Do we have the configure_requires checker?
  local $@;
  eval "require ExtUtils::CBuilder; ExtUtils::CBuilder->VERSION(0.27)";
  if ( $@ ) {
    # They don't obey configure_requires, so it is
    # someone old and delicate. Try to avoid hurting
    # them by falling back to an older simpler test.
    return can_cc();
  }

  # Do we have a working C compiler
  my $builder = ExtUtils::CBuilder->new(
    quiet => 1,
  );
  unless ( $builder->have_compiler ) {
    # No working C compiler
    return 0;
  }

  # Write a C file representative of what XS becomes
  require File::Temp;
  my ( $FH, $tmpfile ) = File::Temp::tempfile(
    "compilexs-XXXXX",
    SUFFIX => '.c',
  );
  binmode $FH;
  print $FH <<'END_C';
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

int main(int argc, char **argv) {
    return 0;
}

int boot_sanexs() {
    return 1;
}

END_C
  close $FH;

  # Can the C compiler access the same headers XS does
  my @libs   = ();
  my $object = undef;
  eval {
    local $^W = 0;
    $object = $builder->compile(
      source => $tmpfile,
    );
    @libs = $builder->link(
      objects     => $object,
      module_name => 'sanexs',
    );
  };
  my $result = $@ ? 0 : 1;

  # Clean up all the build files
  foreach ( $tmpfile, $object, @libs ) {
    next unless defined $_;
    1 while unlink;
  }

  return $result;
}

##############################################################################
require ExtUtils::MakeMaker;
(do 'maint/Makefile.PL.include' or die $@) unless -f 'META.yml';

# have to do this since old EUMM dev releases miss the eval $VERSION line
my $eumm_version  = eval $ExtUtils::MakeMaker::VERSION;
my $mymeta        = $eumm_version >= 6.57_02;
my $mymeta_broken = $mymeta && $eumm_version < 6.57_07;

($MM_ARGS{NAME} = $META{name}) =~ s/-/::/g;
($MM_ARGS{VERSION_FROM} = "lib/$MM_ARGS{NAME}.pm") =~ s{::}{/}g;
$MM_ARGS{LICENSE} = $META{license}
  if $eumm_version >= 6.30;
$MM_ARGS{NO_MYMETA} = 1
  if $mymeta_broken;
$MM_ARGS{META_ADD} = { 'meta-spec' => { version => 2 }, %META }
  unless -f 'META.yml';

for (qw(configure build test runtime)) {
  my $key = $_ eq 'runtime' ? 'PREREQ_PM' : uc $_.'_REQUIRES';
  my $r = $MM_ARGS{$key} = {
    %{$META{prereqs}{$_}{requires} || {}},
    %{delete $MM_ARGS{$key} || {}},
  };
  defined $r->{$_} or delete $r->{$_} for keys %$r;
}

$MM_ARGS{MIN_PERL_VERSION} = delete $MM_ARGS{PREREQ_PM}{perl} || 0;

delete $MM_ARGS{MIN_PERL_VERSION}
  if $eumm_version < 6.47_01;
$MM_ARGS{BUILD_REQUIRES} = {%{$MM_ARGS{BUILD_REQUIRES}}, %{delete $MM_ARGS{TEST_REQUIRES}}}
  if $eumm_version < 6.63_03;
$MM_ARGS{PREREQ_PM} = {%{$MM_ARGS{PREREQ_PM}}, %{delete $MM_ARGS{BUILD_REQUIRES}}}
  if $eumm_version < 6.55_01;
delete $MM_ARGS{CONFIGURE_REQUIRES}
  if $eumm_version < 6.51_03;

ExtUtils::MakeMaker::WriteMakefile(%MM_ARGS);
