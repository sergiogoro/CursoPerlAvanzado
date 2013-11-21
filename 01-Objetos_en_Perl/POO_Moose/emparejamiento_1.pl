#!/usr/bin/env perl
use lib qw(lib);
use PA::Moose::Emparejamiento;
use Moose;
use feature 'say';

my $emp = new PA::Moose::Emparejamiento( local => 'uno', visitante => 'otro');
say $emp->to_string;
