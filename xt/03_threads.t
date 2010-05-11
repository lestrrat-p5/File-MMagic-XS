use strict;
use Test::More;
use Config;
BEGIN {
    if (! $Config{useithreads}) {
        plan(skip_all => "Thread support required to run this test");
    }
}
use threads;
use_ok "File::MMagic::XS";

my $x = File::MMagic::XS->new; 
my @threads;
for (1..5) {
    push @threads, threads->create(sub{
        note( "spawned thread : " . threads->tid() );
    });
}

foreach my $thr (@threads) {
    note( "joining thread : " . $thr->tid );
    $thr->join;
}

ok(1);
done_testing();