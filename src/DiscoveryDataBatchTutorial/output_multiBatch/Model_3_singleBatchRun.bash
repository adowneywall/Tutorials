#!/bin/bash
#SBATCH --partition=general
#SBATCH --reservation=nahant
#SBATCH --job-name=Model_3
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --output=Model_3.output
#SBATCH --error=Model_3.error
module load lotterhos/2019-11-15
cd /home/downey-wall.a/DiscoveryDataBatchTutorial
Rscript processScript.R Model_3 3 2 0
