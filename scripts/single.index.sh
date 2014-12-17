#!/bin/bash -l
#OUTDIR=/home/sbyfield/teosinte_parents/angsd_output
#SBATCH -D /home/sbyfield/teosinte_parents/angsd_output
#SBATCH -o /home/sbyfield/teosinte_parents/logs/out_log-%j.txt
#SBATCH -e /home/sbyfield/teosinte_parents/logs/err_log-%j.txt

samtools index /home/sbyfield/teosinte_parents/aln-refgen3-sorted/JRIAL2A.sorted.bam


