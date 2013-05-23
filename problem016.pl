#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;

my $num = 2**1000;

my $numStr = sprintf "%f",$num;
$numStr =~ s/\..*$//; # remove small number

my $sum = 0;
for(my $i = 0; $i < length $numStr; $i++){
    $sum += substr($numStr,$i,1);
}

print "Answer: $sum\n";
