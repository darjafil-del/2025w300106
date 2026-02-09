# 2025w300106
This is a repository for scripts I used in genome part of Single Cell Data analysis course. 
All files are bash scripts designed for submitting on LISC using SLURM, except FastQC which is bash script run from command line 

Contents of repository:
1 *STAR_genome_index* Genome indexing 
2 *FastQC* RNA-seq quality control
3 *Trimmomatic* RNA-seq read trimming 
4 *STAR_genome map* Read mapping to reference genome
5 *Stringtie* predicting gene models for working with non-model organisms without good genome 
6 *Subread*, *Subread_qc* Quality control of Stringtie read assignment
7 *eggnog* Functional gene annotation of predicted gene models
8 *CellRanger* Creating count matrix for single-cell RNA seq, compartible with 10XGenomics formats and Seurat

Notes on workflow: Initially worked on latest Nematostella genome from our lab Nv2_wnt4_pcna_fluo and this RNA-seq dataset: SRR23260644. Later (for Stringtie, Subread and EGGnOG) switched to another Nematostella dataset from Ina, since the nascent RNA reads in SRR23260644  were very short and could not be properly mapped and annotated.

Additionally used: 
#SRA-Toolkit for dataset import
module load SRA-Toolkit
fasterq-dump SRR23260644

#gffread for extracting features (i.e. proteins) from gtf format files
gffread -g Nv2_wnt4_pcna_fluo.fasta -w transcripts.fasta -y proteins.fasta  Nv2_wnt4_pcna_fluo.gtf
