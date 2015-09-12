#!perl
use strict;
use warnings FATAL => 'all';
use Test::More qw(no_plan);

test_trace("t/mod/a.pm" => ("t/mod/b.pm", "t/mod/c.pm"));
test_trace("t/mod/b.pm" => ("t/mod/c.pm"));
test_trace("t/mod/c.pm" => ());

# Attempts to conditionally load a module that isn't present
test_trace("t/mod/cond.pm" => ());

sub test_trace {
  my($file, @loaded) = @_;
  local $Test::Builder::Level = $Test::Builder::Level + 1;

  system($^X, "-Mblib", "-MApp::FatPacker::Trace", $file);

  open my $trace, "<", "fatpacker.trace";
  while(<$trace>) {
    chomp;
    my $load = $_;
    @loaded = grep { $load ne $_ } @loaded;
  }

  ok !@loaded, "All expected modules loaded for $file";
  unlink "fatpacker.trace";
}

test_trace("t/mod/a.pm" => ("t/mod/b.pm", "t/mod/c.pm"));

sub test_trace_stderr {
  my($file, @loaded) = @_;
  local $Test::Builder::Level = $Test::Builder::Level + 1;

  system(join(' ',
    $^X, "-Mblib", "-MApp::FatPacker::Trace", '--to-stderr', $file,
    '>', 'fatpacker.trace', '2>&1'));

  open my $trace, "<", "fatpacker.trace";
  while(<$trace>) {
    chomp;
    my $load = $_;
    @loaded = grep { $load ne $_ } @loaded;
  }

  ok !@loaded, "All expected modules loaded for $file";
  unlink "fatpacker.trace";
}

