#!/bin/bash
#SBATCH --partition=general
#SBATCH --reservation=nahant
#SBATCH --job-name=test
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --output=%j.output
#SBATCH --error=%j.error

## load the anaconda package:
module load lotterhos/2019-11-15

cd /home/downey-wall.a/Discovery_Data_Challenge

sampleID="Model_1"
p1= "1"
p2= "1"
p3= "1"

Rscript processScript.R $sampleID $p1 $p2 $p3
