#!/bin/bash
#SBATCH --partition=general
#SBATCH --reservation=nahant
#SBATCH --job-name=Model_1
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --output=Model_1.output
#SBATCH --error=Model_1.error
module load lotterhos/2019-11-15
cd /home/downey-wall.a/DiscoveryDataBatchTutorial
Rscript processScript.R Model_1 1 0 0
