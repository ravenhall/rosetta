package Animal::Cow;

=head1 NAME

Cow - Now with Super Cow Powers

=head1 DESCRIPTION

Cow class for Old McD's farm - with the power of speech!

=head1 AUTHOR

Nathan Waddell <nathan.e.waddell@gmail.nospam.com>

=cut

# CPAN modules
use Moose;

extends 'Animal';

sub BUILD {
  my $self = shift;

  $self->species('Cow');
  $self->sound('Moo');
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;
