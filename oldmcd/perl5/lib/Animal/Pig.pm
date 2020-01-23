package Animal::Pig;

=head1 NAME

Pig - The continuing story of Wilbur

=head1 DESCRIPTION

Pig class for Old McD's farm - with the power of speech!

=head1 AUTHOR

Nathan Waddell <nathan.e.waddell@gmail.nospam.com>

=cut

# CPAN modules
use Moose;

extends 'Animal';

sub BUILD {
  my $self = shift;

  $self->species('Pig');
  $self->sound('Oink');
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;
