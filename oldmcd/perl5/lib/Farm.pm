package Farm;

=head1 NAME

Farm - Old McDonald's home sweet home

=head1 DESCRIPTION

Class for Old McDonald's farm, filled with all kinds of singing animals.

=head1 AUTHOR

Nathan Waddell <nathan.e.waddell@gmail.nospam.com

=cut

# our pragmas and app lib
use v5.10;
use lib '.';

# CPAN modules
use Moose;

# App modules
use Animal;
use Animal::Cow;
use Animal::Pig;
use Animal::Horse;

has 'owner' => (is => 'rw', isa => 'Str');
has 'animals' => (
  traits  => ['Array'],
  is      => 'rw',
  isa     => 'ArrayRef[Object]',
  default => sub { [] },
  handles => {add_animal => 'push', next_animal => 'shift'},
);

sub BUILD {
  my $self = shift;
  my @animals = ('Cow', 'Pig', 'Horse');

  # populate the farmyard
  foreach my $type (@animals) {
    my $animalType = 'Animal::' . $type;
    say "Creating $animalType";
    my $animal = $animalType->new;
    $self->add_animal($animal);
  }
}

sub sing {
  my $self = shift;

  while (my $animal = $self->next_animal) {
    my $type  = $animal->species;
    my $sound = $animal->speak;

    say "Old McDonald had a farm";
    say "E I E I O";
    say "And on that farm he had a $type";
    say "E I E I O";
    say "With a $sound $sound here";
    say "and a $sound $sound there";
    say "here a $sound, there a $sound";
    say "Everywhere a $sound $sound";
    say "Old McDonald had a farm";
    say "E I E I O";
  }
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;
