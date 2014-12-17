#!/bin/bash -l
#OUTDIR=/home/sbyfield/teosinte_parents/angsd_output
#SBATCH -D /home/sbyfield/teosinte_parents/angsd_output
#SBATCH -o /home/sbyfield/teosinte_parents/logs/out_log-%j.txt
#SBATCH -e /home/sbyfield/teosinte_parents/logs/err_log-%j.txt
#SBATCH --array=1-20
#SBATCH --mem-per-cpu=8000

##Simon Renny-Byfield, UC Davis, November 17 2014
##Usage: sbatch -p queue <file.sh> <first.list>

echo "Starting Job:"
date

index=0
while read line; do
   file1[index]="$line"
   let "index++"
done < $1 

#now index eaxh .bam file

samtools index ${file1[$SLURM_ARRAY_TASK_ID]}

echo "End Job: "
date
