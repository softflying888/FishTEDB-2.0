#! /usr/bin/perl -w
use strict;

my $in = shift;
my $in1= shift;
open IN,$in or die $!;
$/ = ">";<IN>;$/ = "\n";
while(<IN>){
        my $seqname = "$in1"."."."$1" if /(\S+)/;
	$seqname=~s/\|//g;
	$/ = ">";
        chomp(my $seq=<IN>); 
        $/ = "\n";
        $seq =~s/\s+//g;
	print ">$seqname\n$seq\n";
}
close IN;

