use v5.14;
use warnings;

use Test::More;

use lib '.';
use t::Util;

is(ansifold('/dev/null')->{stdout}, "", '/dev/null');

done_testing;
