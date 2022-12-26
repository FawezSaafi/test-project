#!/bin/bash
# Allocate one node
#SBATCH --nodes=1
# Number of program instances to be executed
#SBATCH --tasks-per-node=4
# 8 GB memory required per node
#SBATCH --mem=16G
# Maximum run time of job
#SBATCH --time=1:00:00
# Give job a reasonable name
#SBATCH --job-name=Singularity
# File name for standard output (%j will be replaced by job id)
#SBATCH --output=singularity_job.out
# File name for error output
#SBATCH --error=singularity_job.err


# Run enroot container
enroot start fawez+test2+test2 
