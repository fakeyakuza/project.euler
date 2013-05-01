#!/usr/bin/perl

use strict;
use warnings;
my $num = 2000000;
my $sum = 0;

for(my $i = $num; $i > 1; $i--){
    
    my $notPrime = 0;
    for(my $j = 2; $j < $i; $j++){
        if($i % $j == 0){
            $notPrime = 1;
            last;
        }
    }

    if(!$notPrime){
        $sum += $i;
    }

    print "$i\n";
}

print "Answer: $sum\n";

