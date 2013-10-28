use strict;

use warnings;
use v5.10;
use lib qw(lib);
use PA::Simple;

my $simple = new PA::Simple;
say "Datos ".$simple->datos;
