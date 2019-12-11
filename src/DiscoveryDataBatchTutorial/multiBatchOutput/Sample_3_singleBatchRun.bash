#!/bin/bash
#SBATCH --partition=general
#SBATCH --reservation=nahant
#SBATCH --job-name=Sample_3
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --output=Sample_3.output
#SBATCH --error=Sample_3.error
module load lotterhos/2019-11-15
cd /home/downey-wall.a/DiscoveryDataBatchTutorial
Rscript processScript.R Sample_3 1 1 5
