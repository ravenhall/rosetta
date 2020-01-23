#!/usr/bin/env perl
# our pragmas and app lib
use strict;
use warnings;
use v5.10;
use lib '../lib';

# CPAN modules
use Test::More;

# app modules
use Animal::Cow;
 
my $a = Animal::Cow->new;

# instantiation test
isa_ok($a, 'Animal::Cow');

# read species test
ok($a->species eq 'Cow', 'Check species shows Cow');

# read sound test
ok($a->sound eq 'Moo', 'Check sound shows Moo');

done_testing();
