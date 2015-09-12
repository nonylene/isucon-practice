package Devel::CheckCompiler;
use strict;
use warnings;
use 5.008001;
our $VERSION = '0.05';
use parent qw/Exporter/;

our @EXPORT = qw/check_c99 check_c99_or_exit check_compile/;
use ExtUtils::CBuilder;

my $C99_SOURCE = <<'C99';
// include a C99 header
#include <stdbool.h>
inline // a C99 keyword with C99 style comments
int test_c99() {
    int i = 0;
    i++;
    int j = i - 1; // another C99 feature: declaration after statement
    return j;
}
C99

sub check_c99 {
    check_compile($C99_SOURCE);
}

sub check_c99_or_exit {
    check_compile($C99_SOURCE) or do {
        warn "Your system is not support C99(OS unsupported)\n";
        exit 0;
    };
}

sub check_compile {
    my ($src, %opt) = @_;

    my $cbuilder = ExtUtils::CBuilder->new(quiet => 1);
    return 0 unless $cbuilder->have_compiler;

    require File::Temp;

    my $tmpfile = File::Temp->new(SUFFIX => '.c');
    $tmpfile->print($src);
    $tmpfile->close();

    my $objname = eval {
        $cbuilder->compile(source => $tmpfile->filename);
    };
    if ($objname) {
        my $ret = 1;
        if ($opt{executable}) {
            my $execfile = eval {
                $cbuilder->link_executable(objects => $objname,
                                           extra_linker_flags => $opt{extra_linker_flags});
            };

            if ($execfile) {
                unlink $execfile or warn "Cannot unlink $execfile (ignored): $!";
            } else {
                $ret = 0;
            }
        }
        unlink $objname or warn "Cannot unlink $objname (ignored): $!";
        return $ret;
    } else {
        return 0;
    }
}

1;
__END__

=encoding utf8

=head1 NAME

Devel::CheckCompiler - Check the compiler's availability

=head1 SYNOPSIS

    use Devel::CheckCompiler;

    check_c99_or_exit();

=head1 DESCRIPTION

Devel::CheckCompiler is checker for compiler's availability.

=head1 FUNCTIONS

=over 4

=item C<check_c99()>

Returns true if the current system has a working C99 compiler, false otherwise.

=item C<check_c99_or_exit()>

Check the current system has a working C99 compiler, if it's not available, exit by 0.

=item C<check_compile($src: Str, %options)>

Compile C<$src> as C code. Return 1 if it's available, 0 otherwise.

Possible options are:

=over

=item executable :Bool = false

Check to see if generating executable is possible if this parameter is true.

=item extra_linker_flags : Str | ArrayRef[Str]

Any additional flags you wish to pass to the linker. This option is used
only when C<executable> option specified.

=back

=back

=head1 AUTHOR

Tokuhiro Matsuno E<lt>tokuhirom AAJKLFJEF@ GMAIL COME<gt>

=head1 SEE ALSO

L<ExtUtils::CBuilder>

=head1 LICENSE

Copyright (C) Tokuhiro Matsuno

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
