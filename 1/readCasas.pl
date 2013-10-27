use strict;
use warnings;
use v5.10;
use YAML qw(LoadFile);

my $data_file = shift || die "Need a file";
my $data = LoadFile($data_file) || die "Problemas cargando $data_file";
say "Datos cargados en clase ", ref $data;
