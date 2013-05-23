#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;
use POSIX;

my $numRoute = 2;
my $divider = 1;
my $step = 1;

for(my $i = 20; $i > 0; $i--){
   $divider *= $i;
   $step *= ($i + 20);

}

$numRoute = $step/$divider;

print "Answer: $numRoute";

