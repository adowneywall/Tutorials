#!/bin/bash
#SBATCH --partition=general
#SBATCH --reservation=nahant
#SBATCH --job-name=Model_5
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --output=Model_5.output
#SBATCH --error=Model_5.error
module load lotterhos/2019-11-15
cd /home/downey-wall.a/DiscoveryDataBatchTutorial
Rscript processScript.R Model_5 4 4 1
