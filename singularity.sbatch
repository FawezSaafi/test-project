#!/bin/bash
#Give job a reasonable name
#SBATCH --job-name=Singularity
# File name for standard output (%j will be replaced by job id)
#SBATCH --output=singularity_job.out
# File name for error output
#SBATCH --error=singularity_job.err
# Run singularity container 
singularity run test
