#!/bin/bash
#
# Announce start
echo "# Running run_QoRTs.sh"
# Importing directories.
source init_dir.sh #
#
# Create directory for alignment files.
dir_sorted=./data/sorted_bams #
mkdir ./results/QoRTs_results #
dir_out=./results/QoRTs_results #
#
# Loops through the fastq files and runs hisat2 on each one.
for f in `find ${dir_sorted}/*bam | sed 's#'${dir_sorted}'/##' | sed 's#.bam##' ` #
  do #
    echo "# Working on file ${f}..."
    java.exe -Xmx2G -jar ./tools/QoRTs-1.3.6/QoRTs.jar QC --singleEnded --minMAPQ 40 --generatePlots --summaryFileSuffix .summary.txt --verbose ${dir_sorted}/${f}.bam ${f_annotation} ${dir_out}/${f}/ #
  done #
# Announce the end
echo "# Finished running."
