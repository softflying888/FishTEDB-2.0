perl changename.pl species.fasta species_name > changed_name.fasta
perl split.fas.pl Danio_rerio.fasta
######Bit data conversion of species other than reference species
faToTwoBit  -noMask changed_name.fasta changed_name.2bit
perl fastaDeal.pl -attri id:len changed_name.fasta >changed_name.fasta.len