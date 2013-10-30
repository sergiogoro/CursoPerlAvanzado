package PA::Alumnos;

use strict;
use warnings;
use feature 'say';
use YAML qw(Dump);

sub new {
    my $this = shift;
    my $class = ref($this) || $this;    #Si $this es una referencia (porque se ha llamado a new desde otro Package (PA::Algo p.ej) ), 
                                            # entonces guardamos esa referencia como la clase. (Para luego bless $self, $class)
                                        # Si no es ninguna referencia, es que no se ha llamado desde otro Package, y la clase
                                            # será ésta nativa/madre/yoquese (PA::Alumnos)

    my $self = {};
    bless $self, $class;        # Class depende desde que punto de la jerarquía de clases se ha llamado
                                    #$class = PA::Alumnos      OR      $class = PA::Algo (si llamamos a new desde PA::Algo)
    #bless $self                # Obtendría la clase (le asignará el nombre) desde la cual llamamos a new.
                                    # Si llamamos a ' centro = new PA::Alumnos' desde un Package PA::Algo, la clase
                                        # por defecto será PA::Algo, en lugar de PA::Alumnos
    
    return $self;
};

sub setCentro {
    my $self = shift;
    $self->{"_centro"} = shift;
}

sub setAlumnos {
    my $self = shift;
    my $arr_ref = shift;
    my @arr = @{ $arr_ref };
    @{ $self->{"_alumnos"} } = @arr;
}

sub getCentro {
    my $self = shift;
    return $self->{"_centro"};
}

sub getAlumnos {
    my $self = shift;
    return \@{ $self->{"_alumnos"} };
}


1;
