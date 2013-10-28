package PA::Alumnos;

use strict;
use warnings;
use feature 'say';

sub new {
    my $this = shift;
    my $centro = shift;
    my $alumnos = shift;
    my $class = ref($this) || $this;
    my $self = {
        CENTRO => $centro,
        ALUMNOS => $alumnos,
    };

    bless $self, $class;
    return ($self);
};

1;
