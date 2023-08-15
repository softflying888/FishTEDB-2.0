# FishTEDB-2.0
Here we mainly introduce the calculation method of transposon insertion time in FishTEDB 2.0.
########################step1########################## 

run lastz
1. Prepare data
The reference data was segmented by chromosome, other species are converted to bit format data, and both reference data and data to be compared require sequence length information.
All genomic data are masked using RepeatMasker, and the bases in the repeated part are all lowercase. All sequence names should be joined with the name of the species.
2. Align and format conversion
This process needs to use lastz, axtChain, chainNet, netToAxt and axtToMaf.

########################step2##########################

run multiz
In this process, we use the roast tool and also need the topology of the tree of the selected species.

########################step3##########################

run PHAST
This step requires the gene annotation file of the reference species.
A detailed tutorial can be found at the following website http://compgen.cshl.edu/phast/phastCons-HOWTO.html.

########################step4##########################

Calculation of r-values and transposon insertion times
Calculate the root-to-tip length and divide by the time the common ancestor diverged, we can get the r value.
Integrate RepeatMasker results and use T=K/2r to estimate transposon insertion time.
