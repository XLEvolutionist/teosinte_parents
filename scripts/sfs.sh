#!/bin/bash
#OUTDIR=/home/sbyfield/teosinte_parents/angsd_output
#SBATCH -D /home/sbyfield/teosinte_parents/angsd_output
#SBATCH -o /home/sbyfield/teosinte_parents/logs/out_log-%j.txt
#SBATCH -e /home/sbyfield/teosinte_parents/logs/err_log-%j.txt
#SBATCH -J sfs

echo "Starting Job: "
date

cmd="realSFS teoparents20.saf 40 -maxIter 100 -P 12 > teoparents20.sfs"
echo $cmd
eval $cmd

echo "Job Done: "
date
