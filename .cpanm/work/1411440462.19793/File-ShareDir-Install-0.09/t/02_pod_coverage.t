#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
plan skip_all => 'these tests are for authors only' unless
            $ENV{AUTHOR_TESTING} or $ENV{RELEASE_TESTING};
eval "use Test::Pod::Coverage 1.00";
plan skip_all => "Test::Pod::Coverage 1.00 required for testing POD coverage" if $@;

plan tests => 1;
pod_coverage_ok(
        "File::ShareDir::Install",
        { also_private => [ 
                ], 
        },
        "File::ShareDir::Install, ignoring private functions",
);
