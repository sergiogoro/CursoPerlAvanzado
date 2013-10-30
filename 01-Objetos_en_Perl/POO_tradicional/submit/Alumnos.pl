#! /usr/bin/env perl

use strict; use warnings; use feature 'say';
use lib qw(lib);
use YAML qw(Dump);
use PA::Alumnos;

my $centro = shift || die "Falta el 1º argumento (centro)";
my $cadenaAlumnos = shift || die "Falta el 2º arg (lista alumnos separados por coma ',')";
my @alumnos = split ",", $cadenaAlumnos;
#my (@alumnos) = (@_) || die "Faltan los alumnos";
#my @alumnos = @_ || die "Falta el 2º arg (lista alumnos)"; #NO, die diciendo que falta 2º argumento...
    # ¿Cómo podría recoger el resto de elementos de @_ y guardarlos en un array? @arr = @_ no funciona, dies...

my $centroEducativo = new PA::Alumnos();                                # New objeto
$centroEducativo->setCentro("UGR");                                     # Set centro
$centroEducativo->setAlumnos(\@alumnos);                                # Set alumnos

say "Centro: " . $centroEducativo->getCentro ;                          # Obtener centro
say "Alumnos: " . join ", ", @{ $centroEducativo->{"_alumnos"} };       # Obtener alumnos
#my $alumnos = join (", ", @{ $centroEducativo->{"_alumnos"} } );       # Obtener alumnos indirectamente
#say "Alumnos: $alumnos";

say "";

say "Esquema del objeto \$centroEducativo:";
say Dump $centroEducativo;                                              # Dump objeto





# # Tests
#   say "-"x5;
#   say "say \$centroEducativo->getCentro";
#   say $centroEducativo->getCentro;
#   
#   say "-"x5;
#   say "say \$centroEducativo->{\"_centro\"}";
#   say $centroEducativo->{"_centro"};
#   
#   say "-"x5;
#   say "say foreach \@{ \$centroEducativo->{\"_alumnos\"} }";
#   say foreach @{ $centroEducativo->{"_alumnos"} };
#   
#   say "-"x5;
#   say "\$alumnosDevueltos_aref = \$centroEducativo->getAlumnos\n\t&\n\t\@alumnosDevueltos = \@{ \$alumnosDevueltos_aref }\n\t&\n\tsay \"<\$_>\" foreach \@alumnosDevueltos";
#   my $alumnosDevueltos_aref = $centroEducativo->getAlumnos;
#   my @alumnosDevueltos = @{ $alumnosDevueltos_aref };
#   say "<$_>" foreach @alumnosDevueltos;

