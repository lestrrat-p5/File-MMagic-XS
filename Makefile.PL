use inc::Module::Install;

# if you are getting this from git repo, you need to have
# Module::Install and Module::Install::XSUtil sintalled

name 'File-MMagic-XS';
all_from 'lib/File/MMagic/XS.pm';

if (!cc_available()) {
    print STDERR "Cannot continue without a compiler\n";
    exit 0;
}

use_ppport;
cc_warnings;
cc_src_paths 'xs';
author_tests 'xt';

WriteAll;
