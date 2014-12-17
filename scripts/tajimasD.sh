#!/bin/bash
#OUTDIR=/home/sbyfield/teosinte_parents/angsd_output
#SBATCH -D /home/sbyfield/teosinte_parents/angsd_output
#SBATCH -o /home/sbyfield/teosinte_parents/logs/out_log-%j.txt
#SBATCH -e /home/sbyfield/teosinte_parents/logs/err_log-%j.txt
#SBATCH -J thetas_bed
#SBATCH --mem=46000

echo "Starting Job: "
date

#create a binary version of thete.thetas.gz 
#thetaStat make_bed teosinte20thetas.sfs.thetas.gz
#calculate Tajimas D
thetaStat do_stat teosinte20thetas.sfs.thetas.gz -nChr 20 -win 5000 -step 1000  -outnames teothetasWindow5000bp_step_1000_chr10.gz

echo "Ending Job: "
date
