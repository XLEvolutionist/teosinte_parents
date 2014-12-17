#!/bin/bash
#OUTDIR=/home/sbyfield/teosinte_parents/angsd_output
#SBATCH -D /home/sbyfield/teosinte_parents/angsd_output
#SBATCH -o /home/sbyfield/teosinte_parents/logs/out_log-%j.txt
#SBATCH -e /home/sbyfield/teosinte_parents/logs/err_log-%j.txt

echo "Starting Job: "
date

COMMAND="angsd -bam /home/sbyfield/teosinte_parents/file.list.txt -doGlf 3 -GL 1 -out teo_parents20 -doMaf 2 -SNP_pval 1e-6 -doMajorMinor 1 -nThreads 16 -r 10 -minMapQ 30 -minQ 20"
echo $COMMAND

eval "$COMMAND"

echo "Ending Job: "
date

