#!/bin/bash
#
# Announce start
echo "# Running sam2bam.sh" #
# Importing directories.
source init_dir.sh #
#
mkdir ./data/aligned_bams #
dir_bams=./data/aligned_bams #
dir_sams=./data/aligned_sams #
#
for f in `find ${dir_sams}/*sam | sed 's#'$dir_sams'/##' | sed 's#.sam##' ` #
do #
echo "# Working on file ${f}..." #
samtools view -h ${dir_sams}/${f}.sam > ${dir_bams}/${f}.bam #
done #
#
#
## Prompt to confirm whether or not the sam files are to be deleted.
#read -p "Delete .sam files?" -n 1 -r #
#echo    # (optional) move to a new line
#if [[ $REPLY =~ ^[Yy]$ ]] #
#then #
#    rm -r ./data/aligned_sams #
#fi #
#
#
'''
# Announce the end
echo "# Finished running sam2bam.sh"
