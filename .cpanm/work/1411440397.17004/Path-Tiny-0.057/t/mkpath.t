use 5.008001;
use strict;
use warnings;
use Test::More 0.96;
use File::Temp ();

use lib 't/lib';
use TestUtils qw/exception/;

use Path::Tiny;

my $tempdir = File::Temp->newdir;

my $path = path($tempdir)->child("foo");

ok( !-e $path,     "target directory not created yet" );
ok( $path->mkpath, "mkpath on directory returned true" );
ok( -d $path,      "target directory created" );

if ( $^O ne 'MSWin32' ) {
    my $path2 = path($tempdir)->child("bar");
    ok( !-e $path2, "target directory not created yet" );
    ok( $path2->mkpath( { mode => 0700 } ), "mkpath on directory with mode" );
    is( $path2->stat->mode & 0777, 0700, "correct mode" );
    ok( -d $path2, "target directory created" );
}

done_testing;
#
# This file is part of Path-Tiny
#
# This software is Copyright (c) 2013 by David Golden.
#
# This is free software, licensed under:
#
#   The Apache License, Version 2.0, January 2004
#
