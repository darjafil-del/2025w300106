# this is a script for running rna-seq quality control. -o specifies output directory, -t number of threads, the rest of settings are defaults. 

module load FastQC
mkdir /lisc/data/scratch/course/2025w300106/filimonova/jmontenegro/fastqc
fastQC -o /lisc/data/scratch/course/2025w300106/filimonova/jmontenegro/fastqc -t 2 /lisc/data/scratch/course/2025w300106/filimonova/jmontenegro/SRR23260644_1.fastq /lisc/data/scratch/course/2025w300106/filimonova/jmontenegro/SRR23260644_2.fastq
