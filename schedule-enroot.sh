#!/bin/bash

enroot import docker://fawez/docker-singularity-test:latest
enroot create  fawez+test2+test2.sqsh
sbatch --partition single  --wait enroot.sbatch
more singularity_job.out
