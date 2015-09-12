use strictures;

use Test::More tests => 1;

SKIP: {
  skip 'Have all the modules; can\'t check this', 1
    unless not eval {
      require indirect;
      require multidimensional;
      require bareword::filehandles;
      1;
    };

  pass('can manage to survive with some modules missing!');
}

