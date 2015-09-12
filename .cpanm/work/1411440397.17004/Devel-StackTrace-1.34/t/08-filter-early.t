use strict;
use warnings;

use Test::More;

use Devel::StackTrace;

{
    my $trace = foo( [] );
    is(
        0 + grep( ref, map { $_->args } $trace->frames ), 0,
        'args stringified in trace'
    );
}

done_testing();

sub foo {
    return Devel::StackTrace->new(
        frame_filter => sub {
            my $frame = shift;
            if ( $frame->{caller}[3] eq "main::foo" ) {
                ok( ref $frame->{args}[0], 'ref arg passed to filter' );
            }
            1;
        },
        filter_frames_early => 1,
        no_refs             => 1,
    );
}

