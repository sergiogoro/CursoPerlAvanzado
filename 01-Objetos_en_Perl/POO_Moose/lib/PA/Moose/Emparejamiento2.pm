package PA::Moose::Emparejamiento2;
use Moose;
extends 'PA::Moose::Emparejamiento';

has 'res_local' => (
  is => 'rw',
  isa => 'Int',
);

has 'res_visitante' => (
  is => 'rw',
  isa => 'Int',
);

sub resultado {
  my $self = shift;
  return ($self->res_local, $self->res_visitante);
}

override to_string => sub {
  my $self = shift;
  return super() . ": " . $self->res_local . " - " . $self->res_visitante;
};

1;
