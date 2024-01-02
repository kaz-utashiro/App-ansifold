use v5.14;
use warnings;

use Test::More;

use lib '.';
use t::Util;

is(ansifold('/dev/null')->run->{result} >> 8, 0, "/dev/null");
is(ansifold('--undefined')->run->{result} >> 8, 2, "undefined option");

is(ansifold('--runin', '-1', '/dev/null')->run->{result} >> 8, 2, "invalid --runin");
is(ansifold('--runout', '-1', '/dev/null')->run->{result} >> 8, 2, "invalid --runout");
is(ansifold('--tabstop', '0', '/dev/null')->run->{result} >> 8, 2, "invalid --tabstop");

is(ansifold('--runlen', '4', '/dev/null')->run->{result} >> 8, 0, "valid --runlen");
isnt(ansifold('--runlen', '-1', '/dev/null')->run->{result} >> 8, 0, "invalid --runlen");

is(ansifold('--tabstop', '1', '/dev/null')->run->{result} >> 8, 0, "valid --tabstop");

is(ansifold('--boundary', 'symbol', '/dev/null')->run->{result} >> 8, 2, "invalid --boundary");
is(ansifold('--boundary', 'space', '/dev/null')->run->{result} >> 8, 0, "valid --boundary");

done_testing;
