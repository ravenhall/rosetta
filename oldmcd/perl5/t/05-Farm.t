#!/usr/bin/env perl
# our pragmas and app lib
use strict;
use warnings;
use v5.10;
use lib '../lib';

# CPAN modules
use Test::More;

# app modules
use Farm;

my $f = Farm->new;

# instantiation test
isa_ok($f, 'Farm');

# set owner test
ok($f->owner("Larry"), 'Farm owner set to Larry');

# read animals test
ok(my $animals = $f->animals, 'Retrieved list of animals from farm');

# check animals array
ok(@$animals[0]->species eq 'Cow',   'First animal is Cow');
ok(@$animals[1]->species eq 'Pig',   'Second animal is Pig');
ok(@$animals[2]->species eq 'Horse', 'Third animal is Horse');

done_testing();
