#!/usr/bin/perl
use strict;
use warnings;

use HTTP::MultiPartParser  qw[];
use HTTP::Headers::Util    qw[split_header_words];
use Hash::MultiValue       qw[];
use IO::File               qw[SEEK_SET];
use File::Temp             qw[];

my $params  = Hash::MultiValue->new;
my $uploads = Hash::MultiValue->new;

my $part;
my $parser = HTTP::MultiPartParser->new(
    boundary  => '----------0xKhTmLbOuNdArY',
    on_header => sub {
        my ($headers) = @_;

        my $disposition;
        foreach (@$headers) {
            if (/\A Content-Disposition: [\x09\x20]* (.*)/xi) {
                $disposition = $1;
                last;
            }
        }

        (defined $disposition)
          or die q/Content-Disposition header is missing/;

        my ($p) = split_header_words($disposition);

        (@$p && $p->[0] eq 'form-data')
          or die qq/Invalid Content-Disposition: '$disposition'/;

        my ($name, $filename);
        for(my $i = 2; $i < @$p; $i += 2) {
            if    ($p->[$i] eq 'name')     { $name     = $p->[$i + 1] }
            elsif ($p->[$i] eq 'filename') { $filename = $p->[$i + 1] }
        }

        (defined $name)
          or die qq/Invalid Content-Disposition: '$disposition'/;

        $part = {
            name    => $name,
            headers => $headers,
        };

        if (defined $filename) {
            $part->{filename} = $filename;

            if (length $filename) {
                my $fh = File::Temp->new(UNLINK => 1);
                $part->{fh}       = $fh;
                $part->{tempname} = $fh->filename;
            }
        }
    },
    on_body => sub {
        my ($chunk, $final) = @_;

        my $fh = $part->{fh};

        if ($fh) {
            print $fh $chunk
              or die qq/Could not write to file handle: '$!'/;
            if ($final) {
                seek($fh, 0, SEEK_SET)
                  or die qq/Could not rewind file handle: '$!'/;
                $part->{size} = -s $fh;
                $uploads->add($part->{name}, $part);
            }
        }
        else {
            $part->{data} .= $chunk;
            if ($final) {
                $params->add($part->{name}, $part->{data});
            }
        }
    }
);

open my $fh, '<:raw', 't/data/001-content.dat'
  or die;

while () {
    my $n = read($fh, my $buffer, 1024);
    unless ($n) {
        die qq/Could not read from fh: '$!'/
          unless defined $n;
        last;
    }
    $parser->parse($buffer);
}

$parser->finish;

