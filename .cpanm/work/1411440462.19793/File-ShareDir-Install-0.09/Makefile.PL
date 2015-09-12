use 5.008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'File::ShareDir::Install',
    VERSION_FROM      => 'lib/File/ShareDir/Install.pm', # finds $VERSION
    LICENSE           => 'perl',
    dist=>{COMPRESS=>'gzip -9f', EXT=>'gz'},

    PREREQ_PM         => {
            # Module::Install::Share requires this also... 
            # (known-bad on RHEL 3, with 5.8.0)
            'ExtUtils::MakeMaker' => '6.11',
            'IO::Dir' => 0,
            'File::Spec' => 0,
        }, 
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/File/ShareDir/Install.pm', # retrieve abstract from module
       AUTHOR         => 'Philip Gwyn <gwyn-at-cpan.org>') : ()),
);
