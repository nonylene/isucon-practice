
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "HTTP Body Parser",
  "AUTHOR" => "Christian Hansen, C<chansen\@cpan.org>, Sebastian Riedel, C<sri\@cpan.org>, Andy Grundman, C<andy\@hybridized.org>, Torsten Raudssus, C<getty\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "HTTP-Body",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "HTTP::Body",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Digest::MD5" => 0,
    "File::Temp" => "0.14",
    "HTTP::Headers" => 0,
    "IO::File" => "1.14"
  },
  "TEST_REQUIRES" => {
    "Test::Deep" => 0,
    "Test::More" => "0.86"
  },
  "VERSION" => "1.19",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "Digest::MD5" => 0,
  "File::Temp" => "0.14",
  "HTTP::Headers" => 0,
  "IO::File" => "1.14",
  "Test::Deep" => 0,
  "Test::More" => "0.86"
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



