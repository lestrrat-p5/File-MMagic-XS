# $Id: /mirror/perl/File-MMagic-XS/trunk/Makefile.PL 8589 2007-11-05T05:59:57.171964Z daisuke  $
#
# Daisuke Maki <daisuke@endeworks.jp>
# All rights reserved.

use strict;
use 5.006001;
use ExtUtils::MakeMaker;

my %INFO = (
    ABSTRACT     => 'Guess File Type With XS (a la mod_mime_magic)',
    AUTHOR       => 'Daisuke Maki <daisuke@endeworks.jp>',
    NAME         => 'File::MMagic::XS',
    VERSION_FROM => 'lib/File/MMagic/XS.pm',
    OBJECT       => '$(O_FILES)',
    LICENSE      => "perl",
);

WriteMakefile(%INFO);