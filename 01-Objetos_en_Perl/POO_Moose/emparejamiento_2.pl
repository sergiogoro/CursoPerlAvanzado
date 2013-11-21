#!/usr/bin/env perl
use lib qw(lib);
use Moose;
use PA::Moose::Emparejamiento2;
use feature 'say';

my $emp = new PA::Moose::Emparejamiento2( local => 'uno', visitante => 'otro', res_local => '1', res_visitante => '2');
say $emp->to_string;
say "res local " . $emp->res_local;
say "res visitante " . $emp->res_visitante;
