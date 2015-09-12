#!perl

use strict;
use warnings;

use lib 't/lib';
use VPIT::TestHelpers;
use indirect::TestThreads;

use Test::Leaner tests => 1;

SKIP:
{
 skip 'Fails on 5.8.2 and lower' => 1 if "$]" <= 5.008_002;

 my $status = run_perl <<' RUN';
  my ($code, @expected);
  BEGIN {
   $code = 2;
   @expected = qw<X Z>;
  }
  sub cb { --$code if $_[0] eq shift(@expected) || q{DUMMY} }
  use threads;
  $code = threads->create(sub {
   eval q{return; no indirect hook => \&cb; new X;};
   return $code;
  })->join;
  eval q{new Y;};
  eval q{return; no indirect hook => \&cb; new Z;};
  exit $code;
 RUN
 is $status, 0, 'loading the pragma in a thread and using it outside doesn\'t segfault';
}
