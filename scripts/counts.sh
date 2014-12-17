#!/bin/bash
#OUTDIR=/home/sbyfield/teosinte_parents/angsd_output
#SBATCH -D /home/sbyfield/teosinte_parents/angsd_output
#SBATCH -o /home/sbyfield/teosinte_parents/logs/out_log-%j.txt
#SBATCH -e /home/sbyfield/teosinte_parents/logs/err_log-%j.txt
#SBATCH -J counts

echo "Starting Job: "
date

cmd="angsd -bam ../file.list.txt -doCounts 1 -minInd 0 -dumpCounts 2 -minQ 20 -P 12 -r 10 -out teoparents20_Chr10counts"
echo $cmd
eval $cmd

echo "Ending Job: "
date
