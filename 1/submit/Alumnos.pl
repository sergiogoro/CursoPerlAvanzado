#! /usr/bin/env perl

use strict; use warnings; use feature 'say';
use lib qw(lib);
use YAML qw(Dump);
use PA::Alumnos;

my $centro = new PA::Alumnos;

$centro->datos("UGR", ("alumno1", "alumno2", "alumno3"));

say Dump $centro;


