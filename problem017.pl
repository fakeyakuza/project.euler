#!/usr/bin/env perl

use 5.10.0;
use lib '/home/kisho/perl5/lib/perl5/';
use strict;
use warnings;

use Lingua::EN::Nums2Words;

my $numCharacter = 0;

for(my $i = 1; $i <= 1000; $i++){
#for(my $i = 342; $i <= 342; $i++){


        my $s = num2word($i);
        $s =~ s/\s//g;
        $s =~ s/-//g;
        $s =~ s/,//g;
        #       print $s,"\n";
        if($i > 100 && $i % 100 != 0){
            $numCharacter += 3;
        }
        $numCharacter += length $s;
}

print "Answer: $numCharacter\n";
