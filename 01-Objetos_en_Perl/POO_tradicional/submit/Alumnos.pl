#! /usr/bin/env perl

use strict; use warnings; use feature 'say';
use lib qw(lib);
use YAML qw(Dump);
use PA::Alumnos;

my $centro = shift || die "Falta el 1º argumento (centro)";
my $cadenaAlumnos = shift || die "Falta el 2º arg (lista alumnos separados por coma ',')";
#my @alumnos = @_ || die "Falta el 2º arg (lista alumnos)"; #NO, die diciendo que falta 2º argumento...
    # ¿Cómo podría recoger el resto de elementos de @_ y guardarlos en un array?
my @alumnos = split ",", $cadenaAlumnos;

my $centroEducativo = new PA::Alumnos($centro, \@alumnos);

say Dump $centroEducativo;
