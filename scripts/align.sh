#!/bin/bash 
#
# Importing directories. 
source init_dir.sh  
#
#
mkdir ./data/aligned_sams #
dir_sams=./data/aligned_sams #
#
for f in `find ${dir_fastqs}/ | sed 's#'$dir_fastqs'/##' | sed 's#.fastq##' `
do #
hisat2 -q -t -x ${dir_indexes}/genome -U ${dir_fastqs}/${f}.fastq -S ${dir_sams}/${f}_aligned.sam ##
done #
# Bug: last file does not work properly! I included the csv so f2 will work fine. 