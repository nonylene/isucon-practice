use strict;
use warnings;

use Test::More 0.88;
use Module::Reader qw(:all);

my $mod_content = do {
    open my $fh, '<', 't/lib/TestLib.pm';
    local $/;
    <$fh>;
};

{
    local @INC = @INC;
    unshift @INC, 't/lib';
    is module_content('TestLib'), $mod_content, 'correctly load module from disk';
}

done_testing;
