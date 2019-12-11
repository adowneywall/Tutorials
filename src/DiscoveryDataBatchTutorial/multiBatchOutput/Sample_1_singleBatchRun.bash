#!/bin/bash
#SBATCH --partition=general
#SBATCH --reservation=nahant
#SBATCH --job-name=Sample_1
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --output=Sample_1.output
#SBATCH --error=Sample_1.error
module load lotterhos/2019-11-15
cd /home/downey-wall.a/DiscoveryDataBatchTutorial
Rscript processScript.R Sample_1 1 1 1
