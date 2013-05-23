#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;
use POSIX;

my $numRoute = 2;
my $subtract = 1;


for(my $i = 3; $i <= 20; $i++){
    $numRoute = $numRoute*2 + $numRoute*($i-1)/$i + 2*$i - $i/2);

    my $divider = 1;
    my $step = 
    for(my $j = $i-2; $j > 0; $j--){
        $divider *= $j;
}
print "Answer: $numRoute";


111000

011100

110001

11110000
