#!/bin/bash
#SBATCH --partition=general
#SBATCH --reservation=nahant
#SBATCH --job-name=Sample_5
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --output=Sample_5.output
#SBATCH --error=Sample_5.error
module load lotterhos/2019-11-15
cd /home/downey-wall.a/DiscoveryDataBatchTutorial
Rscript processScript.R Sample_5 1 3 20
