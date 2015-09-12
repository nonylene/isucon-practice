use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;
(do 'maint/Makefile.PL.include' or die $@) unless -f 'META.yml';

my %WriteMakefileArgs = (
  NAME => 'Import::Into',
  VERSION_FROM => 'lib/Import/Into.pm',
  PREREQ_PM => { },
  LICENSE => 'perl',

  META_MERGE => {
    'meta-spec' => { version => 2 },
    dynamic_config => 0,
    resources => {
      # r/w: p5sagit@git.shadowcat.co.uk:Import-Into.git
      repository => {
        url => 'git://git.shadowcat.co.uk/p5sagit/Import-Into.git',
        web => 'http://git.shadowcat.co.uk/gitweb/gitweb.cgi?p=p5sagit/Import-Into.git',
        type => 'git',
      },
      bugtracker => {
          mailto => 'bug-Import-Into@rt.cpan.org',
          web => 'https://rt.cpan.org/Public/Dist/Display.html?Name=Import-Into',
      },
    },
  },

  META_ADD => {
    prereqs => {
      runtime => {
        requires => {
          'strict' => '0',
          'warnings' => '0',
          'Module::Runtime' => '0',
          'perl' => '5.006',
        },
      },
      test => {
        requires => {
          'Exporter' => '0',
          'base' => '0',
          'Test::More' => '0',
        },
      },
    },
  },

  realclean => { FILES => [ 'Distar/', 'MANIFEST*' ] },
);

my $eumm_version  = eval $ExtUtils::MakeMaker::VERSION;

for (qw(configure build test runtime)) {
  my $key = $_ eq 'runtime' ? 'PREREQ_PM' : uc $_.'_REQUIRES';
  next unless exists $WriteMakefileArgs{META_ADD}{prereqs}{$_}
           or exists $WriteMakefileArgs{$key};
  my $r = $WriteMakefileArgs{$key} = {
    %{$WriteMakefileArgs{META_ADD}{prereqs}{$_}{requires} || {}},
    %{delete $WriteMakefileArgs{$key} || {}},
  };
  defined $r->{$_} or delete $r->{$_} for keys %$r;
}

# dynamic prereqs get added here.

$WriteMakefileArgs{MIN_PERL_VERSION} = delete $WriteMakefileArgs{PREREQ_PM}{perl} || 0;

$WriteMakefileArgs{BUILD_REQUIRES} = {
    %{$WriteMakefileArgs{BUILD_REQUIRES} || {}},
    %{delete $WriteMakefileArgs{TEST_REQUIRES}}
} if $eumm_version < 6.63_03;

$WriteMakefileArgs{PREREQ_PM} = {
    %{$WriteMakefileArgs{PREREQ_PM}},
    %{delete $WriteMakefileArgs{BUILD_REQUIRES}}
} if $eumm_version < 6.55_01;

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  if $eumm_version < 6.51_03;

WriteMakefile(%WriteMakefileArgs);
