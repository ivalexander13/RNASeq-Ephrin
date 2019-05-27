#!/bin/bash

# Shows the execution of this script.
echo "# Running init_dir.sh: Initializing directories"

# Changing directory to the master.
cd ..

# Define directories here.
dir_fastqs=./data/fastqs
dir_indexes=./data/hisat2_index
dir_sams=./data/aligned_sams

# Define files here.
f_refgenome=./data/reference_genome/rn6.fa
f_annotation=./data/reference_genome/ann.gff3

# Tool paths here.
seqmonk_import=./tools/SeqMonk/seqmonk_import

# Announce the end
echo "# Finished running init_dir.sh"
