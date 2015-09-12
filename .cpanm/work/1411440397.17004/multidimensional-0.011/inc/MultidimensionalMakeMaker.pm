package inc::MultidimensionalMakeMaker;
use Moose;

extends 'Dist::Zilla::Plugin::MakeMaker::Awesome';

override _build_WriteMakefile_dump => sub {
    my ($self) = @_;
    my $str = super();

    $str =~ s/^(\s*)(.*)\n\);$/$1$2,\n$1do{ require ExtUtils::Depends; ExtUtils::Depends->new('multidimensional', 'B::Hooks::OP::Check')->get_makefile_vars }\n);/m;
    return $str;
};

__PACKAGE__->meta->make_immutable;
