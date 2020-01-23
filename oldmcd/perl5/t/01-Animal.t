#!/usr/bin/env perl
# our pragmas and app lib
use strict;
use warnings;
use v5.10;
use lib '../lib';

# CPAN modules
use Test::More;

# app modules
use Animal;
 
my $a = Animal->new;

# instantiation test
isa_ok($a, 'Animal');

# set type test
ok($a->species("Camel"));

# set sound test
ok($a->sound("nuzz"));

done_testing();
