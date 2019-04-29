#!/bin/bash 

# Shows the execution of this script. 
echo "# Running init_dir.sh: Initializing directories." 

# Changing directory to the master. 
cd .. 

# Define directories here. 
dir_fastqs=./data/fastqs
dir_indexes=./data/hisat2_index 


# Define files here. 
f_refgenome=./data/reference_genome/rn6.fa 
f_annotation=./data/reference_genome/ann.gff3 
