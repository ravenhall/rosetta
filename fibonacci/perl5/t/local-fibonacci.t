use strict;
use warnings;
use 5.010;
use Test::More;
use FindBin qw($RealBin);
use lib "$RealBin/lib";

require_ok('Local::Fibonacci') or BAIL_OUT('Failed to load Local::Fibonacci, exiting test.');

use Local::Fibonacci;

ok(fibonacci(1) == 1, 'fibonacci(1) = 1');


done_testing();
