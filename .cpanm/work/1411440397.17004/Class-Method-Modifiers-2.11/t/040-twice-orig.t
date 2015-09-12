use strict;
use warnings;
use Test::More;
use if $ENV{AUTHOR_TESTING}, 'Test::Warnings';
my @seen;

eval { ChildCMM->new->orig() };
is_deeply(\@seen, ["orig", "orig"], "CMM: calling orig twice in one around works");

BEGIN
{
    package Parent;
    sub new { bless {}, shift }
    sub orig { push @seen, "orig" }

    package ChildCMM;
    our @ISA = 'Parent';
    use Class::Method::Modifiers;
    around 'orig' => sub { my $orig = shift; $orig->(); $orig->(); };
}

done_testing;
