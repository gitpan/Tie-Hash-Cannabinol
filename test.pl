# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

use Test::Simple tests => 5;

END {print "not ok 1\n" unless $loaded;}
use Tie::Hash::Cannabinol;
$loaded = 1;
ok($loaded);

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

my %hash : Stoned;

my @keys = qw(one two three four);

@hash{@keys} = 1 .. 4;

ok(1) for 2 .. 5;
