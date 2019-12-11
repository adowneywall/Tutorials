#!/bin/bash
#SBATCH --partition=general
#SBATCH --reservation=nahant
#SBATCH --job-name=Sample_4
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --output=Sample_4.output
#SBATCH --error=Sample_4.error
module load lotterhos/2019-11-15
cd /home/downey-wall.a/DiscoveryDataBatchTutorial
Rscript processScript.R Sample_4 1 2 5
