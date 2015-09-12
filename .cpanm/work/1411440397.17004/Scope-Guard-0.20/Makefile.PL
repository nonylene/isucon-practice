use 5.006001;

use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile1(
    MIN_PERL_VERSION => '5.006001',
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    NAME          => 'Scope::Guard',
    VERSION_FROM  => 'lib/Scope/Guard.pm',
    ABSTRACT_FROM => 'lib/Scope/Guard.pm',
    AUTHOR        => 'chocolateboy <chocolate@cpan.org>',
    LICENSE       => 'perl'
);

sub WriteMakefile1 { # Written by Alexandr Ciornii, version 0.21. Added by eumm-upgrade.
    my %params       = @_;
    my $eumm_version = $ExtUtils::MakeMaker::VERSION;
    $eumm_version = eval $eumm_version;
    die "EXTRA_META is deprecated" if exists $params{EXTRA_META};
    die "License not specified" if not exists $params{LICENSE};
    if ($params{BUILD_REQUIRES} and $eumm_version < 6.5503) {
        # EUMM 6.5502 has problems with BUILD_REQUIRES
        $params{PREREQ_PM} = { %{ $params{PREREQ_PM} || {} }, %{ $params{BUILD_REQUIRES} } };
        delete $params{BUILD_REQUIRES};
    }
    delete $params{MIN_PERL_VERSION}   if $eumm_version < 6.48;
    delete $params{LICENSE}            if $eumm_version < 6.31;
    delete $params{AUTHOR}             if $] < 5.005;
    delete $params{ABSTRACT_FROM}      if $] < 5.005;

    WriteMakefile(%params);
}
