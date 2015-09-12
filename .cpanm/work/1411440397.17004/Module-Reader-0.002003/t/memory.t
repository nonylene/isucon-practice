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
    unshift @INC, sub {
        return unless $_[1] eq 'TestLib.pm';
        if ($] < 5.008) {
            my $mod = $mod_content;
            return sub {
                return 0 unless length $mod;
                $mod =~ s/^([^\n]*\n?)//;
                $_ = $1;
                return 1;
            };
        }
        open my $fh, '<', \$mod_content;
        return $fh;
    };
    is module_content('TestLib'), $mod_content, 'correctly load module from sub @INC hook';
    SKIP: {
        skip 'found option doesn\'t work with @INC hooks in perl < 5.8', 2
            if $] < 5.008;
        require TestLib;
        unshift @INC, sub {
            return unless $_[1] eq 'TestLib.pm';
            my $content = '1;';
            open my $fh, '<', \$content;
            return $fh;
        };
        is module_content('TestLib'), '1;', 'loads overridden module from sub @INC hook';
        is module_content('TestLib', { found => \%INC } ), $mod_content, 'found => \%INC loads mod as it was required';
    }
}

done_testing;
