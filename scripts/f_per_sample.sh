#!/bin/bash
#OUTDIR=/home/sbyfield/teosinte_parents/angsd_output
#SBATCH -D /home/sbyfield/teosinte_parents/angsd_output
#SBATCH -o /home/sbyfield/teosinte_parents/logs/out_log-%j.txt
#SBATCH -e /home/sbyfield/teosinte_parents/logs/err_log-%j.txt
#SBATCH -J coefF

echo "Starting Job: "
date

N_SITES="$((`zcat teo_parents20.mafs.gz | wc -l`-1))"
echo $N_SITES

cmd1="ngsF -n_ind 20 -n_sites $N_SITES  -min_epsilon 0.001 -glf teo_parents20.glf -out teo_parents20.approx_indF -approx_EM -seed 12345 -init_values r -n_threads 6"
echo $cmd1
#eval $cmd1
cmd2="ngsF -n_ind 20 -n_sites $N_SITES -min_epsilon 0.001 -glf teo_parents20.glf -out teo_parents20.indF -init_values teo_parents20.approx_indF.pars -n_threads 6"
echo $cmd2
eval $cmd2

echo "Job Done: "
date
