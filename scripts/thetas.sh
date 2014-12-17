#!/bin/bash
#OUTDIR=/home/sbyfield/teosinte_parents/angsd_output
#SBATCH -D /home/sbyfield/teosinte_parents/angsd_output
#SBATCH -o /home/sbyfield/teosinte_parents/logs/out_log-%j.txt
#SBATCH -e /home/sbyfield/teosinte_parents/logs/err_log-%j.txt
#SBATCH -J thetas

echo "Starting Job: "
date

cmd="angsd -bam ../file.list.txt -out teosinte20thetas.sfs -doThetas 1 -doSaf 1 -pest teoparents20.sfs -anc ../genomes/TRIP.fa -GL 2 -P 12 -r 10 -minMapQ 30 -minQ 20"
echo $cmd
eval $cmd

echo "Ending Job: "
date
