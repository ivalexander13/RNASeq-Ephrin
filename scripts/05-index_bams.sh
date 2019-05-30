#!/bin/bash
# Announce start
echo "# Running index_bam.sh"
# Importing directories.
source init_dir.sh #
#
# Create directory for alignment files.
dir_bams=./data/aligned_bams #
#
mkdir ./data/sorted_bams #
dir_sorted_bams=./data/sorted_bams #
#
# Loops through the fastq files and runs hisat2 on each one.
for f in `find ${dir_bams}/*bam | sed 's#'${dir_bams}'/##' | sed 's#.bam##' ` #
  do #
    echo "# Working on file ${f}..." #
    samtools sort -o ${dir_sorted_bams}/${f}_sorted.bam ${dir_bams}/${f}.bam #
    java.exe -jar ./tools/picard.jar BuildBamIndex I=${dir_sorted_bams}/${f}_sorted.bam #
  done #
# Bug [fixed]: last file does not work properly! I included the csv so f2 will work fine.
# Announce the end
echo "# Finished running align.sh"
