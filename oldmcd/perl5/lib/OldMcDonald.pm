package OldMcDonald;

=head1 NAME

oldmcdonald - Relax on this rustic journey through Old McDonald's Farm!

=head1 DESCRIPTION

Old McDonald's Farm is an object-oriented jaunt through a farm of magical singing animals.
But don't take my word for it... just run oldmcdonald and see.

=head1 AUTHOR

Nathan Waddell <nathan.e.waddell@gmail.nospam.com>

=cut

# our pragmas and app lib
use v5.10;
use lib '.';

# CPAN modules
use MooseX::App::Simple;

# app modules
use Farm;

# parameters and options would normally go here but this is a simple app

sub run {
    my ($self) = @_;
    
    say "Welcome to Old McDonald's farm!";
    
    my $farm = Farm->new;
}

1;