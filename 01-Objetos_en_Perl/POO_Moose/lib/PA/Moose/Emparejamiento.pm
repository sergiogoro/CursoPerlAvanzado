package PA::Moose::Emparejamiento;

use Carp qw(croak);

use Moose;

has 'local' => (
  is  => 'ro',
  isa => 'Str',
  required => 1,
);

has 'visitante' => (
  is  => 'ro',
  isa => 'Str',
  required => 1,
);

sub to_string {
  my $self = shift;
  return $self->local . " - " . $self->visitante;
}

1;
