use strict;
use warnings;

use 5.006;
use ExtUtils::MakeMaker;
(do 'maint/Makefile.PL.include' or die $@) unless -f 'META.yml';

my %BUILD_DEPS = (
  'Test::More' => '0.88'
);

my %RUN_DEPS = (
);

my %META_BITS = (
  resources => {
    homepage   => 'http://search.cpan.org/dist/Sub-Exporter-Progressive/',
    repository => 'git://git.shadowcat.co.uk/p5sagit/Sub-Exporter-Progressive.git',
    bugtracker => 'http://rt.cpan.org/Public/Dist/Display.html?Name=Sub-Exporter-Progressive',
  },
  requires => \%RUN_DEPS,
  dynamic_config => 0,
);

my $mymeta_works = eval { ExtUtils::MakeMaker->VERSION('6.5707'); 1 };
my $mymeta = $mymeta_works || eval { ExtUtils::MakeMaker->VERSION('6.5702'); 1 };

my %WriteMakefileArgs = (
  NAME          => 'Sub::Exporter::Progressive',
  VERSION_FROM  => 'lib/Sub/Exporter/Progressive.pm',
  ABSTRACT_FROM => 'lib/Sub/Exporter/Progressive.pm',
  LICENSE       => 'perl',
  PREREQ_PM     => {
    %RUN_DEPS,
    $mymeta_works ? () : (%BUILD_DEPS),
  },

  $mymeta_works
    ? ( # BUILD_REQUIRES makes MYMETA right, requires stops META being wrong
      'BUILD_REQUIRES' => \%BUILD_DEPS,
      'META_ADD' => {
        %META_BITS,
        requires => \%RUN_DEPS,
      },
    )
    : ( # META_ADD both to get META right - only Makefile written
      'META_ADD' => {
        %META_BITS,
        requires => \%RUN_DEPS,
        build_requires => \%BUILD_DEPS,
      },
    )
  ,

  ($mymeta and !$mymeta_works) ? ( 'NO_MYMETA' => 1 ) : (),
);

unless ( eval { ExtUtils::MakeMaker->VERSION('6.56') } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION('6.52') };

WriteMakefile(%WriteMakefileArgs);
