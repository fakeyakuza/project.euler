#!/usr/bin/perl

use strict;
use warnings;

my $triangular;

my $num = 1;
my $numDivisible = 0;
while($numDivisible <= 500){
    $numDivisible = 0;
    $triangular = 0;
    for(my $i = 1; $i <= $num; $i++){
        $triangular += $i;
    }

    my $max = $triangular;
    for(my $i = 1; $i < $max; $i++){
        if($triangular % $i == 0){$numDivisible = $numDivisible+2;$max = $triangular/$i;}
    }
    $num++;
}

print "Answer: $triangular\n";
