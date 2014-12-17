#!/bin/bash
#OUTDIR=/group/jrigrp4/teosinte_parents/angsd_output
#SBATCH -D /group/jrigrp4/teosinte_parents/angsd_output
#SBATCH -o /group/jrigrp4/teosinte_parents/logs/tajD_out_log-%j.txt
#SBATCH -e /group/jrigrp4/teosinte_parents/logs/tajD_err_log-%j.txt
#SBATCH -J thetas_bed

echo "Starting Job: "
date

for i in {5,10,15,20}
  do
    #create a binary version of thete.thetas.gz 
    cmd="thetaStat make_bed $i/teosinte20thetas$i.sfs.thetas.gz"
    echo $cmd
    eval $cmd
    #calculate Tajimas D
    cmd="thetaStat do_stat $i/teosinte20thetas$i.sfs.thetas.gz -nChr 20 -win 5000 -step 1000  -outnames $i/teosinte20thetas$i_chr10.gz"
    echo $cmd
    eval $cmd
 done
 
echo "Ending Job: "
date
