#!/usr/bin/perl
use warnings;
use strict;

my $maxChainNum = 0;
my $maxChainCount = 0;


my $noCheckFlag = "";
my $skipCount = 0;

for(my $i = 999999; $i > 0; $i--){
    if(vec($noCheckFlag,$i,1)){$skipCount++;next;}
    my $num = $i;
    my $chainCount = 0;
    while($num != 1){
        if($num <= 0){print $num."\n";}
        if($num < 2147483648){
            vec($noCheckFlag,$num,1) = 1;
        }
        if($num % 2 == 0){ $num = $num/2;}
        else{$num = 3*$num +1;}
        $chainCount++;
    }

    if($chainCount > $maxChainCount){
        $maxChainCount = $chainCount;
        $maxChainNum = $i;
    }
}

print "Answer: $maxChainNum\n";
print "Chain count: $maxChainCount\n";
print "Skip count: $skipCount\n";

sub printbits {
    my ($v) = @_;
    my $bits = unpack("b*", $v);
    my @bits = split(//, $bits);
    print "$bits ";
    print join(",", @bits), "\n";
}
