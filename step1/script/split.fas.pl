#!/usr/bin/perl 
use strict;
die "Usage: <directory list>!
	1 genelistfile
	2 file.fa list;\n
	"
unless @ARGV;

		my ($in_file) = shift @ARGV ;
		if($in_file=~ /\.gz$/){
		
			open IN, "gzip -dc $in_file|";
		
		}else{
			open IN, $in_file;
		}
		$/ = ">";
		<IN>;
		open OO ,">unchr.fas";
		while (<IN>) {
			/(\S+)/;
			my $id="$1";
			s/(.+)\n//;
			my $infor="$1";
			s/\s+|>//g;
			if($id=~/^danio_rerio.\d+/){
				$id=~/danio_rerio.(\d+)/;
				my $nu="$1";
				$id=~s/danio_rerio/Danio_rerio/;	
				open O,">chr$nu.fas";
				print O ">$id\n$_\n";		
				close O;
				`faToTwoBit  -noMask chr$nu.fas chr$nu.2bit`;
			}else{
				print OO ">$id\n$_\n";		
			}
		}
		$/ = "\n";
		close IN;
		close OO;

sub index{
	my %hash;
		my @temp=&openfile(shift @ARGV);
		foreach(@temp){
			chomp;
			s/>//;
			my $id=(split )[0];
			$hash{$id}=0 if $id;	
		}
	return %hash;
}

sub openfile{
	my ($filename)=@_;
	open LISTFILE ,$filename or die "you can not open $filename\n";
	my @seq=<LISTFILE>;
	close LISTFILE ;
	return @seq;
}
