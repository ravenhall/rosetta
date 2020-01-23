#!/usr/bin/env perl
# our pragmas and app lib
use strict;
use warnings;
use v5.10;
use lib '../lib';

# CPAN modules
use Test::More;

# app modules
use Animal::Pig;

my $a = Animal::Pig->new;

# instantiation test
isa_ok($a, 'Animal::Pig');

# read species test
ok($a->species eq 'Pig', 'Check species shows Pig');

# read sound test
ok($a->sound eq 'Oink', 'Check sound shows Oink');

done_testing();
