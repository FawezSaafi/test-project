 #!/bin/bash
 #test LSDF access 
export LSDFPROJECTS=/lsdf/kit/ipe/projects/scientific-tools
export LSDFHOME=/lsdf/kit/ipe/rd2963
export LSDF=/lsdf
ls /lsdf/kit/ipe/projects/scientific-tools/fossils/NMB F2543
#Build the singularity container from docker container stored in dockerHUb 
singularity build --sandbox  test  docker://fawez/test2:test2
#Schedule batch job 
sbatch --partition single --time=$Time --nodes=$nodes --job-name=$jobname --ntasks-per-node=$taskspernode --wait singularity.sbatch
#Show result 
more singularity_job.out
