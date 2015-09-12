#!perl
use strict;
use warnings FATAL => 'all';
use Test::More qw(no_plan);
use File::Basename;
use File::Copy;
use File::Path;
use File::Temp qw/tempdir/;
use File::Spec;
use Cwd;

BEGIN { use_ok "App::FatPacker", "" }

my $keep = $ENV{'FATPACKER_KEEP_TESTDIR'};
my $tempdir = tempdir($keep ? (CLEANUP => 0) : (CLEANUP => 1));
mkpath([<$tempdir/{lib,fatlib}/t/mod>]);

for(<t/mod/*.pm>) {
  copy $_, "$tempdir/lib/$_" or die "copy failed: $!";
}

my $cwd = getcwd;
chdir $tempdir;

my $fp = App::FatPacker->new;
my $temp_fh = File::Temp->new;
select $temp_fh;
$fp->script_command_file;
print "1;\n";
select STDOUT;
close $temp_fh;

# make sure we don't pick up things from our created dir
chdir File::Spec->tmpdir;

# Packed, now try using it:
require $temp_fh;

{
  require t::mod::a;
  no warnings 'once';
  ok $t::mod::a::foo eq 'bar', "packed script works";
}

{

    ok ref $INC[0], "\$INC[0] is a reference";
    ok $INC[0]->can( "files" ), "\$INC[0] has a files method";

    my @files = sort $INC[0]->files;

    is_deeply( \@files, [
        't/mod/a.pm',
        't/mod/b.pm',
        't/mod/c.pm',
        't/mod/cond.pm',
    ], "\$INC[0]->files returned the files" );

}


if (my $testwith = $ENV{'FATPACKER_TESTWITH'}) {
  for my $perl (split ' ', $testwith) {
    my $out = system $perl, '-e',
        q{alarm 5; require $ARGV[0]; require t::mod::a; exit($t::mod::a::foo eq 'bar' ? 0 : 1)}, $temp_fh;
    ok !$out, "packed script works with $perl";

    $out = system $perl, '-e',
        q{alarm 5; require $ARGV[0]; exit( (sort $INC[0]->files)[0] eq 't/mod/a.pm' ? 0 : 1 )}, $temp_fh;
    ok !$out, "\$INC[0]->files works with $perl";

  }
}

