use inc::Module::Install;

# if you are getting this from git repo, you need to have
#   * Module::Install
#   * Module::Install::AuthorTests
#   * Module::Install::Repository
#   * Module::Install::XSUtil
# installed

name 'File-MMagic-XS';
all_from 'lib/File/MMagic/XS.pm';

use_ppport;
cc_warnings;
cc_src_paths 'xs';
author_tests 'xt';

auto_set_repository;

WriteAll;
