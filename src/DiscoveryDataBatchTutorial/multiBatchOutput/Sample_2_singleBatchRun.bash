#!/bin/bash
#SBATCH --partition=general
#SBATCH --reservation=nahant
#SBATCH --job-name=Sample_2
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --output=Sample_2.output
#SBATCH --error=Sample_2.error
module load lotterhos/2019-11-15
cd /home/downey-wall.a/DiscoveryDataBatchTutorial
Rscript processScript.R Sample_2 1 2 1
