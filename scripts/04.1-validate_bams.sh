#!/bin/bash
# Announce start
echo "# Running validate_bams.sh"
# Importing directories.
source init_dir.sh #
#
# Create directory for alignment files.
dir_out=./results/validation_bams_results #
mkdir $dir_out #
#
# Loops through the fastq files and runs hisat2 on each one.
for f in `find ./data/aligned_bams/*bam | sed 's#'./data/aligned_bams/'##' | sed 's#.bam##' ` #
  do #
    echo "# Working on file ${f}..." #
    java.exe -jar ./tools/picard.jar ValidateSamFile IGNORE_WARNINGS=TRUE I=./data/aligned_bams/${f}.bam > ${dir_out}/${f}_validation.txt #
  done #
# Bug [fixed]: last file does not work properly! I included the csv so f2 will work fine.
# Announce the end
echo "# Finished running align.sh"
