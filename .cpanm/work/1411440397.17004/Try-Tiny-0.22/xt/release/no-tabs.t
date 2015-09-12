use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::NoTabsTests 0.07

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Try/Tiny.pm',
    't/00-compile.t',
    't/basic.t',
    't/context.t',
    't/erroneous_usage.t',
    't/finally.t',
    't/given_when.t',
    't/global_destruction_forked.t',
    't/global_destruction_load.t',
    't/lib/TryUser.pm',
    't/named.t',
    't/when.t'
);

notabs_ok($_) foreach @files;
done_testing;
