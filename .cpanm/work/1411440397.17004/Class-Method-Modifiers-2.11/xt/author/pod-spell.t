use strict;
use warnings;
use Test::More;

# generated by Dist::Zilla::Plugin::Test::PodSpelling 2.006008
use Test::Spelling 0.12;
use Pod::Wordlist;


add_stopwords(<DATA>);
all_pod_files_spelling_ok( qw( bin lib  ) );
__DATA__
Shawn
Moore
sartak
Aaron
Crane
arc
David
Steinbrunner
dsteinbrunner
gfx
gfuji
Graham
Knop
haarg
Justin
Hunter
justin
Karen
Etheridge
ether
mannih
github
Peter
Rabbitson
ribasushi
code
lib
Class
Method
Modifiers
