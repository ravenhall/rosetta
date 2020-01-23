package Animal;

=head1 NAME

Animal - base class for Old McD's animals

=head1 DESCRIPTION

Base class for all animals, giving them a type, a sound, and the magical ability to speak.

=head1 AUTHOR

Nathan Waddell <nathan.e.waddell@gmail.nospam.com>

=cut

# our pragmas and app lib
use v5.10;
use lib '.';

# CPAN modules
use Moose;

has 'species' => (is => 'rw', isa => 'Str');
has 'sound'   => (is => 'rw', isa => 'Str');


sub speak {
  my $self = shift;
  return $self->sound;
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;
