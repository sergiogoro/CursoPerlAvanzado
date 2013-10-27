package PA::Alumnos;

use strict;
use warnings;
use feature 'say';

sub new {
    my $self = shift;
    $self = {};
    bless $self;
    return $self;
}

sub datos {
    my $self = shift;
    my $centro = shift;
    my @alumnos = shift;
    $self = {
        CENTRO => $centro,
        ALUMNOS => @alumnos
    };
    return $self;
}

1;
