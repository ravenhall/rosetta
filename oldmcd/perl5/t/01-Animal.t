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
ok($a->species('Camel'), 'Animal species set to Camel');

# set sound test
ok($a->sound('Nuzz'), 'Animal sound set to Nuzz');

# read species test
ok($a->species eq 'Camel', 'Check species shows Camel');

# read sound test
ok($a->sound eq 'Nuzz', 'Check sound shows Nuzz');

done_testing();
