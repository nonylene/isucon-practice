BEGIN { delete $ENV{PERL_STRICTURES_EXTRA} }

# -e is sufficient here.
-e 't/smells-of-vcs/.git'
  or mkdir('t/smells-of-vcs/.git')
  or die "Couldn't create fake .git: $!";

use Test::More qw(no_plan);

our (@us, @expect);

sub capture_stuff { [ $^H, ${^WARNING_BITS} ] }

sub capture_us { push @us, capture_stuff }
sub capture_expect { push @expect, capture_stuff }

{
  BEGIN { $ENV{PERL_STRICTURES_EXTRA} = 0 }
  use strictures 1;
  BEGIN { capture_us }
  BEGIN { delete $ENV{PERL_STRICTURES_EXTRA} }
}

{
  use strict;
  use warnings FATAL => 'all';
  BEGIN { capture_expect }
}

# I'm assuming here we'll have more cases later. maybe not. eh.

foreach my $idx (0 .. $#us) {
  is($us[$idx][0], $expect[$idx][0], 'Hints ok for case '.($idx+1));
  is($us[$idx][1], $expect[$idx][1], 'Warnings ok for case '.($idx+1));
}

my $v;
eval { $v = strictures->VERSION; 1 } or diag $@;
is $v, $strictures::VERSION, '->VERSION returns version correctly';

SKIP: {
  skip 'Extra tests disabled on perls <= 5.008003', 1
    if $] < 5.008004;
  skip 'Not got all the modules to do this', 1
    unless eval {
      require indirect;
      require multidimensional;
      require bareword::filehandles;
      1;
    };
  sub Foo::new { 1 }
  chdir("t/smells-of-vcs");
  local $strictures::Smells_Like_VCS = 1;
  foreach my $file (qw(lib/one.pm t/one.faket)) {
    ok(!eval { require $file; 1 }, "Failed to load ${file}");
    like($@, qr{Indirect call of method}, "Failed due to indirect.pm, ok");
  }
  ok(eval { require "other/one.pl"; 1 }, "Loaded other/one.pl ok");
  chdir("../..");
}

ok(!eval q{use strictures 2; 1; }, "Can't use strictures 2 (this is version 1)");

SKIP: {
  skip 'Extra tests disabled on perls <= 5.008003', 1
    if $] < 5.008004;
  local $ENV{PERL_STRICTURES_EXTRA} = 1;
  local $strictures::extra_load_states = undef;
  local @INC = ("t/dep_constellations/broken", @INC);
  local %INC = %INC;
  delete $INC{$_}
    for qw( indirect.pm multidimensional.pm bareword/filehandles.pm );

  {
    open my $fh, '>', \my $str;
    local *STDERR = $fh;
    strictures->import;
    like(
      $str,
      qr/Missing were:\n\n  indirect multidimensional bareword::filehandles/,
      "failure to load all three extra deps is reported"
    );
  }

  {
    open my $fh, '>', \my $str;
    local *STDERR = $fh;
    strictures->import;
    ok( !$str, "extra dep load failure is not reported a second time" );
  }
}
