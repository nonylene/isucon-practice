
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
    'lib/Devel/StackTrace.pm',
    'lib/Devel/StackTrace/Frame.pm',
    't/00-compile.t',
    't/01-basic.t',
    't/02-bad-utf8.t',
    't/03-message.t',
    't/04-indent.t',
    't/05-back-compat.t',
    't/06-dollar-at.t',
    't/07-no-args.t',
    't/08-filter-early.t',
    't/09-skip-frames.t',
    't/author-pod-spell.t',
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
