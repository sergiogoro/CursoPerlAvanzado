use strict;
use warnings;
use v5.10;
use YAML qw(Dump);

my $casas = [
    {
        'casa' => 'Lannister',
        'estatura' => 'escasa',
        'nombre' => 'Tyrion'
    },
    
    {
        'casa' => 'Baratheon',
        'hijos' => [
            'Robb',
            'Bran',
            'Arya',
            'Rickon',
            'Sansa'
        ],
        'nombre' => 'Robert'
    }

];


bless $casas, 'Winter::Is::Coming';

say Dump $casas;
