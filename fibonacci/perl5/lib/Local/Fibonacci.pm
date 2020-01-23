package Local::Fibonacci;
use strict;
use warnings;
use 5.010;

=pod

=head1 NAME

Local::Fibonacci

=head1 SYNOPSIS


=head1 DESCRIPTION

The fibonacci sequence implemented in a Functional Programming paradigm.

=head1 AUTHOR

Nathan Waddell <nathan.e.waddell@gmail.com>

=cut

our $VERSION = "0.01";

=pod

=head1 FUNCTIONS

=over

=item fibonacci

Recursive function that implements the fibonacci sequence.

=cut

sub fibonacci {
    my $n = shift;
    unless($n <= 1) {
        $n = fibonacci($n - 1) + fibonacci($n - 2);
    }
    return $n;
}

=pod

=head1 LICENSE

This code was created by Nathan Waddell and all rights are reserved. Permission is given to use this code to evaluate the author's coding style.

=back

=cut

