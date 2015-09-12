#!perl

use strict;
use warnings;

use Test::More tests => 4;

use lib 't/lib';
use VPIT::TestHelpers;

BEGIN { delete $ENV{PERL_INDIRECT_PM_DISABLE} }

{
 my $status = run_perl 'no indirect; qq{a\x{100}b} =~ /\A[\x00-\x7f]*\z/;';
 is $status, 0, 'RT #47866';
}

SKIP:
{
 skip 'Fixed in core only since 5.12' => 1 unless "$]" >= 5.012;
 my $status = run_perl 'no indirect hook => sub { exit 2 }; new X';
 is $status, 2 << 8, 'no semicolon at the end of -e';
}

SKIP:
{
 load_or_skip('Devel::CallParser', undef, undef, 1);
 my $status = run_perl "use Devel::CallParser (); no indirect; sub ok { } ok 1";
 is $status, 0, 'indirect is not getting upset by Devel::CallParser';
}

SKIP:
{
 my $has_package_empty = do {
  local $@;
  eval 'no warnings "deprecated"; package; 1'
 };
 skip 'Empty package only available on perl 5.8.x and below' => 1
                                                      unless $has_package_empty;
 my $status = run_perl 'no indirect hook => sub { }; exit 0; package; new X;';
 is $status, 0, 'indirect does not croak while package empty is in use';
}
