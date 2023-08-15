#!/usr/bin/perl -w
use strict;
my $in1=shift;
my $in2=shift;
open IN1,$in1 or die $!;
#my $first=<IN1>;print "$first";
while(<IN1>){
	next if /^#/;
	chomp;
	my @a=split /\t/,$_;
	my $new=($a[8]/100)/(2*$in2);
	print "$a[0]\t$a[1]\t$a[2]\t$a[3]\t$a[4]\t$a[5]\t$a[6]\t$a[7]\t$new\n";
}
close IN1;
