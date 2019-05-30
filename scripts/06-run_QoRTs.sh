#!/bin/bash
#
# Announce start
echo "# Running run_QoRTs.sh"
# Importing directories.
source init_dir.sh #
#
# Create directory for alignment files.
mkdir ./results/QoRTs_results #
dir_out = ./results/QoRTs_results#
#
# Loops through the fastq files and runs hisat2 on each one.
for f in `find ${dir_fastqs}/*fastq | sed 's#'$dir_fastqs'/##' | sed 's#.fastq##' ` #
do #
echo "# Working on file ${f}..."
hisat2 -q -t -x ${dir_indexes}/genome -U ${dir_fastqs}/${f}.fastq -S ${dir_sams}/${f}_aligned.sam #
done #
# Announce the end
echo "# Finished running."
