#!/bin/bash
#OUTDIR=/home/sbyfield/teosinte_parents/angsd_output
#SBATCH -D /home/sbyfield/teosinte_parents/angsd_output
#SBATCH -o /home/sbyfield/teosinte_parents/logs/out_log-%j.txt
#SBATCH -e /home/sbyfield/teosinte_parents/logs/err_log-%j.txt
#SBATCH -J saf

echo "Starting Job SAF: "
date

cmd="angsd -bam ../file.list.txt -doSaf 2 -out teoparents20 -anc ../genomes/TRIP.fa -ref ../genomes/Zea_mays.AGPv3.22.dna.genome.fa -GL 1 -P 12 -r 10 -indF teo_parents20.approx_indF -doMaf 1 -doMajorMinor 1 -minMapQ 30 -minQ 20"
echo $cmd
eval $cmd

echo "Job Done: "
date
