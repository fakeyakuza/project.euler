#!/usr/bin/perl

use strict;
use warnings;

my ($a, $b, $c);


for($c = 1000; $c > 0; $c--){
    for($b = $c; $b > 0; $b--){
        for($a = $b; $a > 0; $a--){

            if($a*$a + $b*$b == $c*$c &&
                    $a + $b + $c == 1000){
                print "Answer: ". ($a * $b *$c). "\n";
                exit 0;
            }
        }
    }
}
