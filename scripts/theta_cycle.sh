#!/bin/bash
#OUTDIR=/group/jrigrp4/teosinte_parents/angsd_output
#SBATCH -D /group/jrigrp4/teosinte_parents/angsd_output
#SBATCH -o /group/jrigrp4/teosinte_parents/logs/out_log-%j.txt
#SBATCH -e /group/jrigrp4/teosinte_parents/logs/err_log-%j.txt
#SBATCH -J thetas

echo "Starting Job: "
date

for i in  $(seq 5 5 20);
  do
    mInd=$i
    mkdir $i
    cmd="angsd -bam ../file.list.txt -out $i/teosinte20thetas$i.sfs -doThetas 1 -doSaf 1 -pest teoparents20.sfs -anc ../genomes/TRIP.fa -GL 2 -P 12 -r 10 -minMapQ 30 -minQ 20 -minInd $mInd"
    echo $cmd
    eval $cmd
 done
echo "Ending Job: "
date

