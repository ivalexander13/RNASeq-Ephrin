#!/bin/bash
#
# Announce start
echo "# Running align.sh"
# Importing directories.
source init_dir.sh #
#
# Create directory for alignment files.
mkdir ./data/aligned_sams #
dir_sams=./data/aligned_sams #
#
# Loops through the fastq files and runs hisat2 on each one.
for f in `find ${dir_fastqs}/*fastq | sed 's#'$dir_fastqs'/##' | sed 's#.fastq##' ` #
  do #
    echo "# Working on file ${f}..."
    hisat2 -q -t -x ${dir_indexes}/genome -U ${dir_fastqs}/${f}.fastq -S ${dir_sams}/${f}_aligned.sam #
  done #
# Bug [fixed]: last file does not work properly! I included the csv so f2 will work fine.
# Announce the end
echo "# Finished running align.sh"
