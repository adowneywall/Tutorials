#!/bin/bash
#SBATCH --partition=general
#SBATCH --reservation=nahant
#SBATCH --job-name=Model_2
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --output=Model_2.output
#SBATCH --error=Model_2.error
module load lotterhos/2019-11-15
cd /home/downey-wall.a/DiscoveryDataBatchTutorial
Rscript processScript.R Model_2 3 1 2
