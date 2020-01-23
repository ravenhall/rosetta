package Animal::Horse;

=head1 NAME

Horse - Maybe it's Mr. Ed?

=head1 DESCRIPTION

Horse class for Old McD's farm - with the power of speech!

=head1 AUTHOR

Nathan Waddell <nathan.e.waddell@gmail.nospam.com>

=cut

# CPAN modules
use Moose;

extends 'Animal';

sub BUILD {
  my $self = shift;

  $self->species('Horse');
  $self->sound('Neigh');
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;
