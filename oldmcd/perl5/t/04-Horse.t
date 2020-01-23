#!/usr/bin/env perl
# our pragmas and app lib
use strict;
use warnings;
use v5.10;
use lib '../lib';

# CPAN modules
use Test::More;

# app modules
use Animal::Horse;

my $a = Animal::Horse->new;

# instantiation test
isa_ok($a, 'Animal::Horse');

# read species test
ok($a->species eq 'Horse', 'Check species shows Horse');

# read sound test
ok($a->sound eq 'Neigh', 'Check sound shows Neigh');

done_testing();
