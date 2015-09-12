
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.07

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Exception/Class.pm',
    'lib/Exception/Class/Base.pm',
    't/00-compile.t',
    't/author-pod-spell.t',
    't/basic.t',
    't/caught.t',
    't/context.t',
    't/ecb-standalone.t',
    't/ignore.t',
    't/release-cpan-changes.t',
    't/release-eol.t',
    't/release-no-tabs.t',
    't/release-pod-coverage.t',
    't/release-pod-linkcheck.t',
    't/release-pod-no404s.t',
    't/release-pod-syntax.t',
    't/release-synopsis.t'
);

notabs_ok($_) foreach @files;
done_testing;
