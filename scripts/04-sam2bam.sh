#!/bin/bash
#
# Announce start
echo "# Running sam2bam.sh"
# Importing directories.
source init_dir.sh #
#
mkdir ./data/seqmonk_files #
dir_seqmonk_files=./data/seqmonk_files #
#
#for f in `find ${dir_fastqs}/*fastq | sed 's#'$dir_fastqs'/##' | sed 's#.fastq##' ` #
#do #
#echo "# Working on file ${f}..."
${seqmonk_import} --genome "Rattus norvegicus/rn6" --outfile ${dir_seqmonk_files}/${f}_seqmonk.smk ${dir_sams}/*.sam #
#done #
#
# Bug [fixed]: last file does not work properly! I included the csv so f2 will work fine.
# Announce the end
echo "# Finished running sam2bam.sh"
